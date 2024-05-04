import 'package:client_shared/components/sheet_title_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:ridy/graphql/order.fragment.graphql.dart';
import 'package:ridy/schema.gql.dart';

class RiderPreferencesSheetView extends StatelessWidget {
  final List<Fragment$CurrentOrder$options> options;
  const RiderPreferencesSheetView({required this.options, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        minimum: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SheetTitleView(
                title: S.of(context).ride_preferences_title,
                closeAction: () => Navigator.pop(context)),
            ...options.map((e) => RidePreferenceItem(
                name: e.name, icon: e.icon, isSelected: false)),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(S.of(context).action_confirm_and_continue),
                ))
              ],
            )
          ],
        ));
  }
}

class RidePreferenceItem extends StatelessWidget {
  final String name;
  final Enum$ServiceOptionIcon icon;
  final bool isSelected;

  const RidePreferenceItem(
      {required this.name,
      required this.icon,
      required this.isSelected,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                  color: isSelected
                      ? CustomTheme.primaryColors
                      : Colors.transparent,
                ),
                color: isSelected
                    ? CustomTheme.primaryColors.shade200
                    : CustomTheme.neutralColors.shade200),
            child: Icon(
              getOptionIcon(),
              size: 32,
              color: isSelected
                  ? CustomTheme.primaryColors
                  : CustomTheme.neutralColors.shade400,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            name,
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
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
