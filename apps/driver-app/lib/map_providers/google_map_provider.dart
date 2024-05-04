import 'dart:async';
import 'dart:ui';

import 'package:client_shared/config.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as map_toolkit;
import 'package:ridy/current_location_cubit.dart';
import 'package:ridy/main.graphql.dart';

import '../main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'open_street_map_provider.dart';

// ignore: must_be_immutable
class GoogleMapProvider extends StatefulWidget {
  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(fallbackLocation.latitude, fallbackLocation.longitude),
    zoom: 14.4746,
  );

  GoogleMapProvider({Key? key}) : super(key: key);

  @override
  State<GoogleMapProvider> createState() => _GoogleMapProviderState();
}

class _GoogleMapProviderState extends State<GoogleMapProvider> {
  final Completer<GoogleMapController> _controller = Completer();

  final Stream<geo.Position> streamServerLocation =
      geo.Geolocator.getPositionStream(
          locationSettings: const geo.LocationSettings(distanceFilter: 50));

  @override
  void initState() {
    geo.Geolocator.getLastKnownPosition().then((value) async {
      if (value == null) return;
      (await _controller.future).animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(value.latitude, value.longitude), zoom: 15),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return FutureBuilder(
        future: BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(size: Size(48, 48)), 'images/marker.png'),
        builder: (context, bitmapDescriptorSnapshot) {
          return BlocConsumer<MainBloc, MainState>(
              listenWhen: (previous, next) =>
                  next is StatusOnline || next is StatusInService,
              listener: (context, state) async {
                geo.Geolocator.checkPermission().then((value) {
                  if (value == geo.LocationPermission.denied) {
                    geo.Geolocator.requestPermission();
                  }
                });
                final currentLocation =
                    context.read<CurrentLocationCubit>().state.location;
                if (state.markers.isNotEmpty) {
                  final points = state.markers
                      .map((e) =>
                          LatLng(e.position.latitude, e.position.longitude))
                      .followedBy(currentLocation != null
                          ? [
                              LatLng(currentLocation.latitude,
                                  currentLocation.longitude)
                            ]
                          : [])
                      .toList();
                  (await _controller.future).animateCamera(
                      CameraUpdate.newLatLngBounds(
                          boundsFromLatLngList(points), 100));
                }
                if (state is StatusOnline &&
                    state.orders.isEmpty &&
                    currentLocation != null) {
                  (await _controller.future).animateCamera(
                      CameraUpdate.newLatLngZoom(
                          LatLng(currentLocation.latitude,
                              currentLocation.longitude),
                          16));
                }
                if ((state is StatusOnline && currentLocation == null) ||
                    (state is StatusInService &&
                        state.currentLocation == null)) {
                  geo.Geolocator.getCurrentPosition().then(
                      (value) => onLocationUpdated(value, mainBloc, context));
                }
              },
              builder: (context, state) => Stack(
                    children: [
                      BlocConsumer<CurrentLocationCubit, CurrentLocationState>(
                        listener: (context, currentLocationState) async {
                          if (currentLocationState.location == null ||
                              currentLocationState.radius == null ||
                              state is! StatusOnline ||
                              (state).orders.isNotEmpty) {
                            return;
                          }

                          final northeast =
                              map_toolkit.SphericalUtil.computeOffset(
                                  map_toolkit.LatLng(
                                      currentLocationState.location!.latitude,
                                      currentLocationState.location!.longitude),
                                  currentLocationState.radius!,
                                  45);
                          final southwest =
                              map_toolkit.SphericalUtil.computeOffset(
                                  map_toolkit.LatLng(
                                      currentLocationState.location!.latitude,
                                      currentLocationState.location!.longitude),
                                  currentLocationState.radius!,
                                  225);
                          final bounds = LatLngBounds(
                              southwest: LatLng(
                                  southwest.latitude, southwest.longitude),
                              northeast: LatLng(
                                  northeast.latitude, northeast.longitude));
                          (await _controller.future).animateCamera(
                              CameraUpdate.newLatLngBounds(bounds, 100));
                        },
                        builder: (context, currentLocationState) {
                          return GoogleMap(
                            initialCameraPosition: widget._kGooglePlex,
                            padding: const EdgeInsets.only(bottom: 80),
                            myLocationEnabled: true,
                            polylines: (state is StatusInService &&
                                    ((state)
                                            .driver
                                            ?.currentOrders
                                            .first
                                            .directions
                                            ?.isNotEmpty ??
                                        false))
                                ? <Polyline>{
                                    Polyline(
                                        polylineId:
                                            const PolylineId('directions'),
                                        points: state.driver?.currentOrders
                                                .first.directions
                                                ?.map(
                                                    (e) => LatLng(e.lat, e.lng))
                                                .toList() ??
                                            [],
                                        color: CustomTheme.primaryColors,
                                        width: 5)
                                  }
                                : <Polyline>{},
                            circles: state.driver?.searchDistance == null ||
                                    currentLocationState.location == null
                                ? <Circle>{}
                                : <Circle>{
                                    Circle(
                                        circleId:
                                            const CircleId('searchDistance'),
                                        center: LatLng(
                                            currentLocationState
                                                .location!.latitude,
                                            currentLocationState
                                                .location!.longitude),
                                        radius:
                                            (currentLocationState.radius ?? 0)
                                                .toDouble(),
                                        fillColor: Colors.blue.withOpacity(0.3),
                                        strokeColor: CustomTheme
                                            .secondaryColors.shade200,
                                        strokeWidth: 2)
                                  },
                            myLocationButtonEnabled: state is StatusOffline ||
                                (state is StatusOnline && state.orders.isEmpty),
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                            markers: state.markers
                                .map((e) => Marker(
                                    markerId: MarkerId(e.id),
                                    icon: bitmapDescriptorSnapshot.data ??
                                        BitmapDescriptor.defaultMarker,
                                    position: LatLng(e.position.latitude,
                                        e.position.longitude)))
                                .toSet(),
                          );
                        },
                      ),
                      if (state is! StatusOffline)
                        StreamBuilder<geo.Position>(
                            stream: streamServerLocation,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                onLocationUpdated(
                                    snapshot.data!, mainBloc, context);
                              }
                              return Container();
                            })
                    ],
                  ));
        });
  }
}

LatLngBounds boundsFromLatLngList(List<LatLng> list) {
  double? x0, x1, y0, y1;
  for (LatLng latLng in list) {
    if (x0 == null) {
      x0 = x1 = latLng.latitude;
      y0 = y1 = latLng.longitude;
    } else {
      if (latLng.latitude > (x1 ?? 0)) x1 = latLng.latitude;
      if (latLng.latitude < x0) x0 = latLng.latitude;
      if (latLng.longitude > (y1 ?? 0)) y1 = latLng.longitude;
      if (latLng.longitude < (y0 ?? 0)) y0 = latLng.longitude;
    }
  }
  return LatLngBounds(northeast: LatLng(x1!, y1!), southwest: LatLng(x0!, y0!));
}

Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  var codec = await instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ImageByteFormat.png))!
      .buffer
      .asUint8List();
}
