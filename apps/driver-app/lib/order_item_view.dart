import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:client_shared/components/user_avatar_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/config.dart';
import 'package:ridy/current_location_cubit.dart';
import 'package:ridy/graphql/order.fragment.graphql.dart';
import 'package:ridy/schema.gql.dart';
import 'package:ridy/unit_of_measurement.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';

class OrderItemView extends StatelessWidget {
  final Fragment$AvailableOrder order;
  final OrderAcceptedCallback onAcceptCallback;
  final bool isActionActive;
  const OrderItemView(
      {Key? key,
      required this.order,
      required this.onAcceptCallback,
      required this.isActionActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentLocationCubit, CurrentLocationState>(
        builder: (context, state) {
      final double driverDistance = state.location == null
          ? order.distanceBest.toDouble()
          : (Geolocator.distanceBetween(
                  state.location!.latitude,
                  state.location!.longitude,
                  order.points.first.lat,
                  order.points.first.lng) /
              1000);
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: RidySheetView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  UserAvatarView(
                      urlPrefix: serverUrl,
                      url: null,
                      cornerRadius: 60,
                      size: 30),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.service?.name ?? "-",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        S.of(context).distanceAway(
                            distanceToString(context, driverDistance)),
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                        color: CustomTheme.primaryColors.shade200,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      NumberFormat.simpleCurrency(name: order.currency)
                          .format(order.costBest - order.providerShare),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  )
                ],
              ),
              const Divider(),
              ...order.addresses.mapIndexed((index, e) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Icon(
                              getIconByIndex(index, order.addresses.length),
                              color: CustomTheme.neutralColors.shade500,
                            ),
                          ),
                          Expanded(
                            child: Text(e,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodySmall),
                          ),
                          if (index == order.addresses.length - 1)
                            Text(
                                order.durationBest == 0
                                    ? ""
                                    : durationToString(
                                        Duration(seconds: order.durationBest)),
                                style: Theme.of(context).textTheme.bodySmall)
                        ],
                      ),
                    ),
                    if (index < order.addresses.length - 1)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: DottedLine(
                            direction: Axis.vertical,
                            lineLength: 20,
                            lineThickness: 3,
                            dashLength: 3,
                            dashColor: CustomTheme.neutralColors.shade500),
                      )
                  ],
                );
              }).toList(),
              const Spacer(),
              Row(
                  children: order.options
                      .map((e) => OrderPreferenceTagView(
                            icon: e.icon,
                            name: e.name,
                          ))
                      .toList()),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: !isActionActive
                        ? null
                        : () => onAcceptCallback(order.id),
                    child: Text(S.of(context).available_order_action_accept)),
              )
            ],
          ),
        ),
      );
    });
  }

  IconData getIconByIndex(int index, int length) {
    if (index == 0) {
      return Ionicons.navigate;
    } else if (index == length - 1) {
      return Ionicons.location;
    } else {}
    return Ionicons.flag;
  }
}

typedef OrderAcceptedCallback = void Function(String orderId);

String durationToString(Duration duration) =>
    ("in ${duration.inMinutes.toStringAsFixed(0)} mins");

class OrderPreferenceTagView extends StatelessWidget {
  final Enum$ServiceOptionIcon icon;
  final String name;

  const OrderPreferenceTagView(
      {required this.icon, required this.name, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: CustomTheme.neutralColors.shade100,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: CustomTheme.primaryColors,
                  borderRadius: BorderRadius.circular(16)),
              child: Icon(
                getOptionIcon(),
                size: 14,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              name,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(width: 4),
          ],
        ),
      ),
    );
  }

  IconData getOptionIcon() {
    switch (icon) {
      case Enum$ServiceOptionIcon.Pet:
        return Ionicons.paw;

      case Enum$ServiceOptionIcon.TwoWay:
        return Ionicons.repeat;

      case Enum$ServiceOptionIcon.Luggage:
        return Ionicons.briefcase;

      case Enum$ServiceOptionIcon.PackageDelivery:
        return Ionicons.cube;

      case Enum$ServiceOptionIcon.Shopping:
        return Ionicons.cart;

      case Enum$ServiceOptionIcon.Custom1:
        return Ionicons.help;

      case Enum$ServiceOptionIcon.Custom2:
        return Ionicons.help;

      case Enum$ServiceOptionIcon.Custom3:
        return Ionicons.help;

      case Enum$ServiceOptionIcon.Custom4:
        return Ionicons.help;

      case Enum$ServiceOptionIcon.Custom5:
        return Ionicons.help;

      case Enum$ServiceOptionIcon.$unknown:
        return Ionicons.help;
    }
  }
}
