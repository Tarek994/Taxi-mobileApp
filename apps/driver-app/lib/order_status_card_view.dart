import 'package:client_shared/components/light_colored_button.dart';
import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:client_shared/components/rounded_button.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:client_shared/components/user_avatar_view.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/chat/chat.graphql.dart';
import 'package:ridy/graphql/order.fragment.graphql.dart';
import 'package:ridy/main.graphql.dart';
import 'package:ridy/order_invoice_view.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/ride_options_sheet_view.dart';
import 'package:ridy/rider_preferences_sheet_view.dart';
import 'package:ridy/schema.gql.dart';
import 'package:timeago_flutter/timeago_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:collection/collection.dart';

import 'config.dart';
import 'package:flutter_gen/gen_l10n/messages.dart';
import 'main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderStatusCardView extends StatelessWidget {
  final Fragment$CurrentOrder order;
  const OrderStatusCardView({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MainBloc>();
    final now = DateTime.now();
    final canPay = (order.paidAmount +
            (order.rider?.wallets
                    .firstWhereOrNull(
                        (element) => element.currency == order.currency)
                    ?.balance ??
                0)) >=
        order.costAfterCoupon;
    return Mutation$UpdateOrderStatus$Widget(
        options: WidgetOptions$Mutation$UpdateOrderStatus(
            onCompleted: (result, parsedData) {
              if (parsedData != null) {
                bloc.add(CurrentOrderUpdated(parsedData.updateOneOrder));
              }
            },
            onError: (error) => showOperationErrorMessage(context, error)),
        builder: (runMutation, result) {
          return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
            if (order.status == Enum$OrderStatus.WaitingForPostPay) {
              return OrderInvoiceView(
                  order: order,
                  onCashPaymentReceived: () {
                    runMutation(Variables$Mutation$UpdateOrderStatus(
                        orderId: order.id,
                        status: Enum$OrderStatus.Finished,
                        cashPayment: (order.costAfterCoupon +
                            order.tipAmount -
                            order.paidAmount)));
                  });
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    children: [
                      const Spacer(),
                      FloatingActionButton.extended(
                          heroTag: 'navigateFab',
                          onPressed: () => openMapsSheet(context, order),
                          elevation: 0,
                          label: Text(
                            S.of(context).order_status_action_navigate,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          icon: const Icon(Ionicons.navigate)),
                    ],
                  ),
                ),
                RidySheetView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SheetTitleView(
                            title: getTitleForStatus(context, order.addresses,
                                order.status, order.destinationArrivedTo)),
                        Row(
                          children: [
                            UserAvatarView(
                                urlPrefix: serverUrl,
                                url: order.rider?.media?.address,
                                cornerRadius: 40,
                                size: 35),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${order.rider?.firstName ?? "-"} ${order.rider?.lastName ?? "-"}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    if (order.status ==
                                        Enum$OrderStatus.DriverAccepted)
                                      Timeago(
                                          builder: (context, text) {
                                            return Text(
                                              (order.etaPickup?.isBefore(now) ??
                                                      false)
                                                  ? S
                                                      .of(context)
                                                      .rider_expected_time_past(
                                                          order.etaPickup
                                                                  ?.difference(
                                                                      now)
                                                                  .inMinutes
                                                                  .abs() ??
                                                              0)
                                                  : S
                                                      .of(context)
                                                      .rider_expected_time_future(
                                                          order.etaPickup
                                                                  ?.difference(
                                                                      DateTime
                                                                          .now())
                                                                  .inMinutes ??
                                                              0),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                            );
                                          },
                                          date: order.etaPickup ??
                                              DateTime.now()),
                                    if (order.status ==
                                            Enum$OrderStatus.Started ||
                                        order.status ==
                                            Enum$OrderStatus.Arrived)
                                      Row(
                                        children: [
                                          Icon(
                                            !canPay
                                                ? Ionicons.close_circle
                                                : Ionicons.checkmark_circle,
                                            size: 14,
                                            color: !canPay
                                                ? const Color(0xffb20d0e)
                                                : const Color(0xff108910),
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            canPay
                                                ? S
                                                    .of(context)
                                                    .order_payment_status_paid
                                                : S
                                                    .of(context)
                                                    .order_payment_status_unpaid,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                    color: !canPay
                                                        ? const Color(
                                                            0xffb20d0e)
                                                        : const Color(
                                                            0xff108910)),
                                          )
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            RoundedButton(
                                icon: Ionicons.call,
                                onPressed: () {
                                  if (order.rider == null) return;
                                  _launchUrl(context,
                                      "tel://+${order.rider!.mobileNumber}");
                                }),
                            const SizedBox(width: 8),
                            ChatIconButton(order: order),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        Row(
                          children: [
                            LightColoredButton(
                                icon: Ionicons.list,
                                text: S.of(context).action_ride_options,
                                onPressed: () async {
                                  showModalBottomSheet<RideOptionsResult>(
                                      context: context,
                                      builder: (context) {
                                        return RideOptionsSheetView(
                                            orderId: order.id);
                                      });
                                }),
                            const Spacer(),
                            if (order.options.isNotEmpty)
                              LightColoredButton(
                                  icon: Ionicons.options,
                                  text: S.of(context).action_ride_preferences,
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return RiderPreferencesSheetView(
                                            options: order.options,
                                          );
                                        });
                                  }),
                          ],
                        ),
                        const SizedBox(height: 12),
                        if (order.status == Enum$OrderStatus.DriverAccepted)
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: (result?.isLoading ?? false)
                                    ? null
                                    : () => runMutation(
                                        Variables$Mutation$UpdateOrderStatus(
                                            orderId: order.id,
                                            status: Enum$OrderStatus.Arrived)),
                                child: Text(
                                    S.of(context).order_status_action_arrived)),
                          ),
                        if (order.status == Enum$OrderStatus.Arrived)
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: (result?.isLoading ?? false)
                                    ? null
                                    : () => runMutation(
                                        Variables$Mutation$UpdateOrderStatus(
                                            orderId: order.id,
                                            status: Enum$OrderStatus.Started)),
                                child: Text(
                                    S.of(context).order_status_action_start)),
                          ),
                        if (order.status == Enum$OrderStatus.Started)
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: (result?.isLoading ?? false)
                                    ? null
                                    : () {
                                        if (order.destinationArrivedTo ==
                                            order.addresses.length - 2) {
                                          runMutation(
                                              Variables$Mutation$UpdateOrderStatus(
                                                  orderId: order.id,
                                                  status: Enum$OrderStatus
                                                      .Finished));
                                        } else {
                                          runMutation(
                                              Variables$Mutation$UpdateOrderStatus(
                                                  orderId: order.id,
                                                  destinationArrivedTo: order
                                                          .destinationArrivedTo +
                                                      1));
                                        }
                                      },
                                child: Text(getFinishedButtonText(
                                    context,
                                    order.addresses,
                                    order.destinationArrivedTo))),
                          )
                      ],
                    ),
                  ),
                ),
              ],
            );
          });
        });
  }

  openMapsSheet(context, Fragment$CurrentOrder order) async {
    final availableMaps = await MapLauncher.installedMaps;
    String title = S.of(context).navigation_dialog_title_pickup_point;
    Coords coords = Coords(order.points.first.lat, order.points.first.lng);
    if (order.status != Enum$OrderStatus.DriverAccepted &&
        order.status != Enum$OrderStatus.Arrived) {
      title = S.of(context).navigation_title_destination_point;
      coords = Coords(order.points[order.destinationArrivedTo + 1].lng,
          order.points[order.destinationArrivedTo + 1].lng);
    }
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Column(
            children: [
              SheetTitleView(
                title: S.of(context).navigation_dialog_title,
                closeAction: () {
                  Navigator.pop(context);
                },
              ),
              SingleChildScrollView(
                child: Wrap(
                  children: <Widget>[
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showMarker(
                          coords: coords,
                          title: title,
                        ),
                        title: Text(map.mapName),
                        leading: SvgPicture.asset(
                          map.icon,
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String getTitleForStatus(BuildContext context, List<String> addresses,
      Enum$OrderStatus status, int destionationIndex) {
    switch (status) {
      case Enum$OrderStatus.DriverAccepted:
        return S.of(context).order_status_card_title_driver_accepted;

      case Enum$OrderStatus.Arrived:
        return S.of(context).order_status_action_arrived;

      case Enum$OrderStatus.Started:
        return destionationIndex == addresses.length - 1
            ? S.of(context).order_status_card_title_started
            : S.of(context).orderStatusCardTitleMultipleDestinations(
                destionationIndex + 1);

      default:
        return "";
    }
  }

  String getFinishedButtonText(
      BuildContext context, List<String> addresses, int destinationIndex) {
    return destinationIndex == addresses.length - 1
        ? S.of(context).order_status_action_finished
        : S.of(context).actionArrivedToDestination(destinationIndex + 1);
  }

  _launchUrl(BuildContext context, String url) async {
    final canLaunch = await canLaunchUrl(Uri.parse(url));
    if (!canLaunch) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: RidyBanner(S.of(context).message_cant_open_url,
              type: BannerType.error)));
      return;
    }
    launchUrl(Uri.parse(url));
  }
}

class ChatIconButton extends StatefulWidget {
  final Fragment$CurrentOrder order;
  const ChatIconButton({Key? key, required this.order}) : super(key: key);

  @override
  State<ChatIconButton> createState() => _ChatIconButtonState();
}

class _ChatIconButtonState extends State<ChatIconButton> {
  int newMessages = 0;

  @override
  Widget build(BuildContext context) {
    return Mutation$UpdateLastSeenMessagesAt$Widget(
        builder: (runMutation, result) {
      return Subscription$NewMessageReceived$Widget(
          onSubscriptionResult: (subscriptionResult, client) {
        if (subscriptionResult.data != null) {
          newMessages++;
        }
      }, builder: (data) {
        return RoundedButton(
            count: newMessages +
                widget.order.conversations
                    .where((element) => element.sentAt
                        .isAfter(widget.order.driverLastSeenMessagesAt))
                    .length,
            icon: Ionicons.mail,
            onPressed: () {
              newMessages = 0;
              runMutation(Variables$Mutation$UpdateLastSeenMessagesAt(
                  requestId: widget.order.id));
              Navigator.pushNamed(context, 'chat');
            });
      });
    });
  }
}
