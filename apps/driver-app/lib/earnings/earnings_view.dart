import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/components/empty_state_card_view.dart';
import 'package:client_shared/components/query_result_view.dart';
import 'package:client_shared/components/trip_history_item_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/earnings/earnings.graphql.dart';
import 'package:intl/intl.dart';

import 'package:flutter_gen/gen_l10n/messages.dart';
import 'package:ridy/schema.gql.dart';

class EarningsView extends StatefulWidget {
  static final daysOfWeek = ["M", "T", "W", "T", "F", "S", "S"];
  const EarningsView({Key? key}) : super(key: key);

  @override
  State<EarningsView> createState() => _EarningsViewState();
}

class _EarningsViewState extends State<EarningsView> {
  DateTime startDate = DateTime.now().subtract(const Duration(days: 7));
  DateTime endDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RidyBackButton(text: S.of(context).action_back),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CupertinoButton(
                  child: const Icon(Ionicons.caret_back, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      endDate = startDate.subtract(const Duration(days: 1));
                      startDate = endDate.subtract(const Duration(days: 7));
                    });
                  }),
              Column(
                children: [
                  Text(
                    "${DateFormat('MMMd').format(startDate)}-${DateFormat('MMMd').format(endDate)}",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  // const SizedBox(height: 4),
                  // Text(
                  //   "\$12",
                  //   style: Theme.of(context).textTheme.displaySmall,
                  // )
                ],
              ),
              CupertinoButton(
                  onPressed: endDate.difference(DateTime.now()).inDays > -1
                      ? null
                      : () {
                          setState(() {
                            startDate = endDate.add(const Duration(days: 1));
                            endDate = startDate.add(const Duration(days: 7));
                          });
                        },
                  child:
                      const Icon(Ionicons.caret_forward, color: Colors.black))
            ]),
            const SizedBox(height: 16),
            Query$GetStats$Widget(
                options: Options$Query$GetStats(
                    variables: Variables$Query$GetStats(
                        startDate: startDate, endDate: endDate)),
                builder: (result, {refetch, fetchMore}) {
                  if (result.isLoading || result.hasException) {
                    return Expanded(
                        child: QueryResultLoadingView(
                      loadingText: S.of(context).loading,
                    ));
                  }
                  final stats = result.parsedData;
                  var index = 0;
                  final List<BarChartGroupData> barData =
                      (stats?.getStatsNew.dataset ?? [])
                          .map<BarChartGroupData>(
                              (data) => BarChartGroupData(x: index++, barRods: [
                                    BarChartRodData(
                                      borderRadius: BorderRadius.circular(10),
                                      width: 200 /
                                          (stats?.getStatsNew.dataset.length ??
                                              200),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            CustomTheme.primaryColors,
                                            CustomTheme.primaryColors.shade700
                                          ]),
                                      toY: data.earning,
                                    )
                                  ]))
                          .toList();
                  if (stats?.getStatsNew.dataset.isEmpty ?? true) {
                    return EmptyStateCard(
                        title: S.of(context).empty_state_title_no_record,
                        description: S.of(context).earnings_empty_state_body,
                        icon: Ionicons.cloud_offline);
                  }
                  if (stats != null) {
                    return Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 300,
                            child: BarChart(
                              BarChartData(
                                barTouchData: BarTouchData(
                                    touchTooltipData: BarTouchTooltipData(
                                  tooltipBgColor: Colors.grey.shade800,
                                  getTooltipItem: (group, groupIndex, rod,
                                          rodIndex) =>
                                      BarTooltipItem(
                                          NumberFormat.simpleCurrency(
                                                  name: stats
                                                      .getStatsNew.currency)
                                              .format(stats.getStatsNew
                                                  .dataset[groupIndex].earning),
                                          const TextStyle(color: Colors.white)),
                                )),
                                barGroups: barData,
                                groupsSpace: 0,
                                gridData: FlGridData(show: false),
                                borderData: FlBorderData(show: false),
                                titlesData: FlTitlesData(
                                    leftTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false)),
                                    rightTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false)),
                                    topTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false)),
                                    bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                      reservedSize: 40,
                                      showTitles: true,
                                      getTitlesWidget: (index, title) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Text(
                                            stats.getStatsNew
                                                .dataset[index.toInt()].name
                                                .substring(0, 1),
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        );
                                      },
                                    ))),
                              ),
                              swapAnimationDuration:
                                  const Duration(milliseconds: 250),
                            ),
                          ),
                          Expanded(
                              child: ListView.builder(
                                  itemCount: stats.orders.edges.length,
                                  itemBuilder: ((context, index) {
                                    final item = stats.orders.edges[index].node;
                                    return TripHistoryItemView(
                                        id: item.id,
                                        canceledText:
                                            S.of(context).order_status_canceled,
                                        title: item.service?.name ?? "-",
                                        dateTime: item.createdOn,
                                        currency: item.currency,
                                        price: item.costAfterCoupon -
                                            item.providerShare,
                                        isCanceled: item.status ==
                                                Enum$OrderStatus
                                                    .RiderCanceled ||
                                            item.status ==
                                                Enum$OrderStatus.DriverCanceled,
                                        onPressed: (id) {});
                                  })))
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                })
          ],
        ),
      ),
    );
  }
}
