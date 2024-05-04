import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:ridy/graphql/order.fragment.graphql.dart';
import 'package:ridy/main.graphql.dart';
import 'package:ridy/schema.gql.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

abstract class MainEvent {}

class DriverUpdated extends MainEvent {
  Fragment$BasicProfile driver;

  DriverUpdated(this.driver);
}

class VersionStatusEvent extends MainEvent {
  Enum$VersionStatus status;
  VersionStatusEvent(this.status);
}

class AvailableOrdersUpdated extends MainEvent {
  List<Fragment$AvailableOrder> orders;

  AvailableOrdersUpdated(this.orders);
}

class AvailabledOrderAdded extends MainEvent {
  Fragment$AvailableOrder order;

  AvailabledOrderAdded(this.order);
}

class AvailableOrderRemoved extends MainEvent {
  Fragment$AvailableOrder order;

  AvailableOrderRemoved(this.order);
}

class SelectedOrderChanged extends MainEvent {
  int index;

  SelectedOrderChanged(this.index);
}

class CurrentOrderUpdated extends MainEvent {
  Fragment$CurrentOrder order;

  CurrentOrderUpdated(this.order);
}

abstract class MainState extends Equatable {
  final Fragment$BasicProfile? driver;
  final List<MarkerData> markers;

  const MainState(this.driver, this.markers);
}

class StatusUnregistered extends MainState {
  StatusUnregistered(driver) : super(driver, []);

  @override
  List<Object?> get props => [driver];
}

class StatusOffline extends MainState {
  StatusOffline(Fragment$BasicProfile? driver) : super(driver, []);

  @override
  List<Object?> get props => [driver];
}

class RequireUpdateState extends MainState {
  RequireUpdateState() : super(null, []);

  @override
  List<Object?> get props => [];
}

class StatusOnline extends MainState {
  final List<Fragment$AvailableOrder> orders;
  final Fragment$AvailableOrder? selectedOrder;

  StatusOnline({driver, required this.orders, this.selectedOrder})
      : super(
            driver,
            selectedOrder != null
                ? selectedOrder.points
                    .asMap()
                    .entries
                    .map((e) => MarkerData(
                        id: e.value.lat.toString(),
                        position: LatLng(e.value.lat, e.value.lng),
                        address: selectedOrder.addresses[e.key]))
                    .toList()
                : []);

  @override
  List<Object?> get props => [driver, orders, selectedOrder];
}

class StatusInService extends MainState {
  final LatLng? currentLocation;

  static List<Enum$OrderStatus> statusesWithMarker = [
    Enum$OrderStatus.DriverAccepted,
    Enum$OrderStatus.Arrived,
    Enum$OrderStatus.Started
  ];

  StatusInService(driver, {this.currentLocation})
      : super(
            driver,
            ((driver?.currentOrders.isEmpty ?? true) ||
                    !statusesWithMarker
                        .contains(driver.currentOrders.first.status)
                ? []
                : (driver?.currentOrders.first.status ==
                            Enum$OrderStatus.DriverAccepted ||
                        driver?.currentOrders.first.status ==
                            Enum$OrderStatus.Arrived)
                    ? [
                        MarkerData(
                            id: driver!.currentOrders.first.points[0].lat
                                .toString(),
                            position: LatLng(
                                driver?.currentOrders.first.points[0].lat,
                                driver?.currentOrders.first.points[0].lng),
                            address: driver?.currentOrders.first.addresses[0])
                      ]
                    : [
                        MarkerData(
                            id: driver!
                                .currentOrders
                                .first
                                .points[driver!.currentOrders.first
                                        .destinationArrivedTo +
                                    1]
                                .lat
                                .toString(),
                            position: LatLng(
                                driver
                                    ?.currentOrders
                                    .first
                                    .points[driver!.currentOrders.first
                                            .destinationArrivedTo +
                                        1]
                                    .lat,
                                driver
                                    ?.currentOrders
                                    .first
                                    .points[driver!.currentOrders.first
                                            .destinationArrivedTo +
                                        1]
                                    .lng),
                            address: driver?.currentOrders.first.addresses[
                                driver!.currentOrders.first
                                        .destinationArrivedTo +
                                    1])
                      ]));

  @override
  List<Object?> get props => [
        driver?.currentOrders.firstOrNull?.status,
        driver?.currentOrders.firstOrNull?.destinationArrivedTo,
        currentLocation
      ];
}

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(StatusOffline(null)) {
    on<VersionStatusEvent>(((event, emit) => emit(RequireUpdateState())));

    on<DriverUpdated>((event, emit) {
      switch (event.driver.status) {
        case Enum$DriverStatus.Online:
          emit(StatusOnline(driver: event.driver, orders: const []));
          break;

        case Enum$DriverStatus.InService:
          emit(StatusInService(event.driver));
          break;

        case Enum$DriverStatus.Offline:
          emit(StatusOffline(event.driver));
          break;

        case Enum$DriverStatus.Blocked:
        case Enum$DriverStatus.WaitingDocuments:
        case Enum$DriverStatus.PendingApproval:
        case Enum$DriverStatus.SoftReject:
        case Enum$DriverStatus.HardReject:
        case Enum$DriverStatus.$unknown:
          emit(StatusUnregistered(event.driver));
      }
    });

    on<AvailableOrdersUpdated>((event, emit) {
      if (state is! StatusOnline) {
        return;
      }
      // if ((listEquals((state as StatusOnline).orders.map((e) => e.id).toList(),
      //         event.orders.map((e) => e.id).toList())) &&
      //     event.location?.latitude ==
      //         (state as StatusOnline).currentLocation?.latitude) {
      //   return;
      // }
      List<Fragment$AvailableOrder> orders = event.orders;
      final sumOldIds = (state as StatusOnline).orders.fold<int>(
          0, (previousValue, element) => previousValue + int.parse(element.id));
      final sumNewIds = orders.fold<int>(
          0, (value, element) => value + int.parse(element.id));
      if (sumNewIds != sumOldIds) {
        emit(StatusOnline(
            driver: state.driver,
            orders: orders,
            selectedOrder: orders.isNotEmpty ? orders.first : null));
      }
    });

    on<AvailabledOrderAdded>((event, emit) {
      if (state is StatusOnline &&
          (state as StatusOnline).orders.firstWhereOrNull(
                  (element) => element.id == event.order.id) ==
              null) {
        FlutterRingtonePlayer.play(
            fromAsset: "images/notification.mp3",
            looping: false,
            volume: 1.0,
            asAlarm: true);
        //(state as StatusOnline).orders.add(event.order);
        final newOrders =
            (state as StatusOnline).orders.followedBy([event.order]).toList();
        emit(StatusOnline(
            driver: state.driver,
            orders: newOrders,
            selectedOrder: (state as StatusOnline).orders.isEmpty
                ? event.order
                : (state as StatusOnline).selectedOrder));
      }
    });

    on<AvailableOrderRemoved>((event, emit) {
      if (state is StatusOnline &&
          (state as StatusOnline).orders.firstWhereOrNull(
                  (element) => element.id == event.order.id) !=
              null) {
        (state as StatusOnline)
            .orders
            .removeWhere((element) => element.id == event.order.id);
        emit(StatusOnline(
            driver: state.driver,
            orders: (state as StatusOnline).orders,
            selectedOrder:
                (state as StatusOnline).selectedOrder?.id == event.order.id
                    ? (state as StatusOnline).orders.firstOrNull
                    : (state as StatusOnline).selectedOrder));
      }
    });

    on<SelectedOrderChanged>((event, emit) {
      if (state is StatusOnline) {
        emit(StatusOnline(
            driver: state.driver,
            orders: (state as StatusOnline).orders,
            selectedOrder: (state as StatusOnline).orders[event.index]));
      }
    });

    on<CurrentOrderUpdated>((event, emit) {
      final endedStatuses = [
        Enum$OrderStatus.RiderCanceled,
        Enum$OrderStatus.DriverCanceled,
        Enum$OrderStatus.Finished,
        Enum$OrderStatus.WaitingForReview
      ];
      final order = event.order;
      if (endedStatuses.contains(order.status)) {
        // TODO: Verify commenting out these lines didn't caused malfunction, if so, remove them
        // state.driver!.status = Enum$DriverStatus.Online;
        // state.driver!.currentOrders = [];
        emit(StatusOnline(driver: state.driver, orders: const []));
      } else {
        if (state.driver?.currentOrders.isNotEmpty ?? false) {
          state.driver?.currentOrders.removeAt(0);
        }
        state.driver?.currentOrders
            .add(Query$Me$driver$currentOrders.fromJson(order.toJson()));

        emit(StatusInService(state.driver));
      }
    });
  }
}

class MarkerData {
  String id;
  LatLng position;
  String address;

  MarkerData({required this.id, required this.position, required this.address});
}
