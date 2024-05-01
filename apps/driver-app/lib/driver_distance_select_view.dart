import 'package:client_shared/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/current_location_cubit.dart';
import 'package:ridy/main.graphql.dart';
import 'package:ridy/query_result_view.dart';

import 'package:ridy/unit_of_measurement.dart';

class DriverDistanceSelect extends StatelessWidget {
  const DriverDistanceSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Mutation$UpdateDriverSearchDistance$Widget(
        options: WidgetOptions$Mutation$UpdateDriverSearchDistance(
          onCompleted: (result, parsedData) {
            if (parsedData?.updateOneDriver == null) return;
            context
                .read<CurrentLocationCubit>()
                .setRadius(parsedData!.updateOneDriver.searchDistance);
          },
          onError: (error) => showOperationErrorMessage(context, error),
        ),
        builder: (runMutation, result) {
          return BlocBuilder<CurrentLocationCubit, CurrentLocationState>(
            builder: (context, state) {
              return Row(
                children: [
                  const Spacer(),
                  CupertinoButton(
                    minSize: 0,
                    padding: EdgeInsets.zero,
                    onPressed: ((result?.isLoading ?? false) ||
                            state.radius == null ||
                            state.radius! < 2000)
                        ? null
                        : () {
                            if ((state.radius ?? 0) > 1000) {
                              final newDistance = (state.radius ?? 0) -
                                  ((state.radius ?? 0) > 10000 ? 10000 : 1000);
                              runMutation(
                                  Variables$Mutation$UpdateDriverSearchDistance(
                                      distance: newDistance));
                            }
                          },
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: CustomTheme.secondaryColors.shade400,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: const Icon(
                          Icons.remove,
                          size: 32,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                      padding: const EdgeInsets.all(11),
                      color: CustomTheme.primaryColors.shade50,
                      child: Text(distanceToString(
                          context, (state.radius ?? 0).toDouble()))),
                  CupertinoButton(
                    minSize: 0,
                    padding: EdgeInsets.zero,
                    onPressed: ((result?.isLoading ?? false) ||
                            (state.radius ?? 0) > 90000)
                        ? null
                        : () {
                            final newDistance = (state.radius ?? 0) +
                                ((state.radius ?? 0) < 10000 ? 1000 : 10000);
                            runMutation(
                                Variables$Mutation$UpdateDriverSearchDistance(
                                    distance: newDistance));
                          },
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: CustomTheme.secondaryColors.shade400,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: const Icon(
                          Icons.add,
                          size: 32,
                          color: Colors.white,
                        )),
                  ),
                  const Spacer(),
                ],
              );
            },
          );
        });
  }
}
