import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:client_shared/components/ride_option_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:ridy/main.graphql.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/schema.gql.dart';

class RideOptionsSheetView extends StatelessWidget {
  final String orderId;

  const RideOptionsSheetView({Key? key, required this.orderId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SheetTitleView(
              title: S.of(context).rider_options_dialog_title,
              closeAction: () => Navigator.pop(context),
            ),
            Mutation$UpdateOrderStatus$Widget(
                options: WidgetOptions$Mutation$UpdateOrderStatus(
                    onError: (error) {
                      final message = error?.graphqlErrors
                              .map((e) => e.message)
                              .join(", ") ??
                          "Unknown error";
                      if (message == "CANCEL_NOT_ALLOWED") {
                        final snackBar = SnackBar(
                            content: RidyBanner(
                                message == "CANCEL_NOT_ALLOWED"
                                    ? S.of(context).error_cancel_not_allowed
                                    : message,
                                type: BannerType.error));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        return;
                      }
                      showOperationErrorMessage(context, error);
                    },
                    onCompleted: (json, data) =>
                        Navigator.pop(context, RideOptionsResult.cancel)),
                builder: (runMutation, result) {
                  return RideOptionItem(
                      icon: Ionicons.close,
                      iconColor: const Color(0xffce1c1d),
                      text: S.of(context).action_cancel_ride,
                      onPressed: (result?.isLoading ?? false)
                          ? null
                          : () async {
                              runMutation(Variables$Mutation$UpdateOrderStatus(
                                      orderId: orderId,
                                      status: Enum$OrderStatus.DriverCanceled))
                                  .networkResult;
                            });
                }),
          ],
        ));
  }
}

enum RideOptionsResult { none, cancel }
