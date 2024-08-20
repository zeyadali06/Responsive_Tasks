import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';
import 'package:responsive_designs/constants.dart';

class BarChartSection extends StatefulWidget {
  const BarChartSection({super.key, required this.values});

  final List<double> values;

  @override
  State<StatefulWidget> createState() => BarChartSectionState();
}

class BarChartSectionState extends State<BarChartSection> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: BarChart(
                BarChartData(
                  baselineY: 10,
                  borderData: FlBorderData(show: false),
                  barGroups: List.generate(widget.values.length, (i) {
                    return makeGroupData(i, widget.values[i] / 1000, isTouched: i == touchedIndex);
                  }),
                  extraLinesData: ExtraLinesData(
                    extraLinesOnTop: false,
                    horizontalLines: [
                      HorizontalLine(y: 0, color: Colors.grey[100], dashArray: [5], strokeWidth: 1.5),
                      HorizontalLine(y: 2, color: Colors.grey[100], dashArray: [5], strokeWidth: 1.5),
                      HorizontalLine(y: 4, color: Colors.grey[100], dashArray: [5], strokeWidth: 1.5),
                      HorizontalLine(y: 6, color: Colors.grey[100], dashArray: [5], strokeWidth: 1.5),
                      HorizontalLine(y: 8, color: Colors.grey[100], dashArray: [5], strokeWidth: 1.5),
                      HorizontalLine(y: 10, color: Colors.grey[100], dashArray: [5], strokeWidth: 1.5),
                    ],
                  ),
                  gridData: const FlGridData(show: false, drawVerticalLine: false),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles, reservedSize: 35)),
                    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getLeftTitles, reservedSize: 28, interval: 1)),
                  ),
                  barTouchData: BarTouchData(
                    touchCallback: (FlTouchEvent event, barTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions || barTouchResponse == null || barTouchResponse.spot == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
                      });
                    },
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipColor: (_) => const Color(0xff101214),
                      tooltipHorizontalAlignment: FLHorizontalAlignment.center,
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        return BarTooltipItem(
                          'Profit\t\t\t\t\t\tExpense\n',
                          TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w500, fontSize: getResponsiveFontSize(context: context, fontSize: 8)),
                          textAlign: TextAlign.left,
                          children: <TextSpan>[
                            TextSpan(
                              text: ("${rod.toY}K\t\t\t\t\t2.6K").toString(),
                              style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(context: context, fontSize: 10), fontWeight: FontWeight.w500),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  BarChartGroupData makeGroupData(int x, double y, {bool isTouched = false, List<int> showTooltips = const []}) {
    return BarChartGroupData(
      x: x,
      showingTooltipIndicators: showTooltips,
      barRods: [
        BarChartRodData(
          toY: y,
          color: kPrimaryColor,
          width: 15,
          borderRadius: BorderRadius.circular(5),
          backDrawRodData: BackgroundBarChartRodData(show: true, toY: 10, color: Colors.grey[100]),
        ),
      ],
    );
  }

  Widget getBottomTitles(double value, TitleMeta meta) {
    final List<String> monthsNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: SideTitleWidget(
        angle: .6,
        axisSide: meta.axisSide,
        space: 0,
        child: Text(
          monthsNames[value.toInt()],
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: getResponsiveFontSize(context: context, fontSize: 8)),
        ),
      ),
    );
  }

  Widget getLeftTitles(double value, TitleMeta meta) {
    String text = "";
    if (value.toInt() % 2 == 0) {
      text = "${value.toInt()}K";
    }
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: SideTitleWidget(
        axisSide: meta.axisSide,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: getResponsiveFontSize(context: context, fontSize: 8)),
        ),
      ),
    );
  }
}
