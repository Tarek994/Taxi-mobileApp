import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:ridy/main.graphql.dart';
import 'package:ridy/schema.gql.dart';

import 'driver_distance_select_view.dart';
import 'main_bloc.dart';
import 'query_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_item_view.dart';

class OrdersCarouselView extends StatelessWidget {
  final PageController carouselController = PageController();

  OrdersCarouselView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return SafeArea(
      top: false,
      minimum: const EdgeInsets.all(16),
      child:
          Query$AvailableOrders$Widget(builder: (result, {refetch, fetchMore}) {
        if (result.isLoading || result.hasException) {
          return RidySheetView(
              child: QueryResultView(result, refetch: refetch));
        }
        return Subscription$OrderCreated$Widget(
            onSubscriptionResult: (subscriptionResult, client) {
          if (subscriptionResult.parsedData != null) {
            mainBloc.add(AvailabledOrderAdded(
                subscriptionResult.parsedData!.orderCreated));
          }
        }, builder: (created) {
          return Subscription$OrderRemoved$Widget(
              onSubscriptionResult: (subscriptionResult, client) {
            if (subscriptionResult.parsedData != null) {
              mainBloc.add(AvailableOrderRemoved(
                  subscriptionResult.parsedData!.orderRemoved));
            }
          }, builder: (removed) {
            return Mutation$UpdateOrderStatus$Widget(
                options: WidgetOptions$Mutation$UpdateOrderStatus(
                    onCompleted: (result, parsedData) => mainBloc
                        .add(CurrentOrderUpdated(parsedData!.updateOneOrder)),
                    onError: (error) =>
                        showOperationErrorMessage(context, error)),
                builder: (runMutation, result) =>
                    BlocBuilder<MainBloc, MainState>(builder: (context, state) {
                      if ((state as StatusOnline).orders.isEmpty) {
                        return const DriverDistanceSelect();
                      }
                      return PageView.builder(
                          controller: PageController(viewportFraction: 0.9),
                          itemCount: state.orders.length,
                          onPageChanged: (index) =>
                              mainBloc.add(SelectedOrderChanged(index)),
                          itemBuilder: (context, index) => OrderItemView(
                                order: state.orders[index],
                                isActionActive: !(result?.isLoading ?? false),
                                onAcceptCallback: (String orderId) async {
                                  runMutation(
                                      Variables$Mutation$UpdateOrderStatus(
                                          orderId: orderId,
                                          status:
                                              Enum$OrderStatus.DriverAccepted));
                                },
                              ));
                    }));
          });
        });
      }),
    );
  }
}
