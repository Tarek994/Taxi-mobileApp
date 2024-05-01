import 'package:client_shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:collection/collection.dart';

class StepOrb extends StatelessWidget {
  final int activePageId;
  final int id;

  const StepOrb({Key? key, required this.activePageId, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 27,
      height: 27,
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          color: activePageId >= id
              ? CustomTheme.primaryColors
              : CustomTheme.neutralColors.shade200),
      child: SizedBox(
        width: 27,
        height: 27,
        child: Center(
          child: Text("${id + 1}",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: activePageId >= id
                      ? CustomTheme.primaryColors.shade50
                      : CustomTheme.neutralColors.shade800)),
        ),
      ),
    );
  }
}

class StepTitle extends StatelessWidget {
  final int activePageId;
  final int id;
  final String title;

  const StepTitle(
      {Key? key,
      required this.activePageId,
      required this.id,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: activePageId == id
          ? Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(fontSize: 10),
              textAlign: TextAlign.center,
            )
          : const SizedBox(height: 15),
    );
  }
}

class StepDottedLine extends StatelessWidget {
  final int activePageId;
  final int id;
  const StepDottedLine({Key? key, required this.activePageId, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedLine(
        dashColor: (id >= activePageId
            ? CustomTheme.neutralColors.shade200
            : CustomTheme.primaryColors));
  }
}

class WizardStepItem {
  final String title;

  WizardStepItem({required this.title});
}

class WizardSteps extends StatelessWidget {
  final List<WizardStepItem> items;
  final int activePageId;
  const WizardSteps({Key? key, required this.items, required this.activePageId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          child: StepDottedLine(
            activePageId: 0,
            id: 0,
          ),
        ),
        Row(
          children: [
            ...items.mapIndexed((index, element) => Expanded(
                  child: Column(
                    children: [
                      StepOrb(activePageId: activePageId, id: index),
                      const SizedBox(height: 4),
                      StepTitle(
                          activePageId: activePageId,
                          id: index,
                          title: element.title)
                    ],
                  ),
                ))
          ],
        )
      ],
    );
  }
}
