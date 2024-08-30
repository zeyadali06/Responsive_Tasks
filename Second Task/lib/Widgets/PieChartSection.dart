import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:secondtask/Models/StorageDetailsItemModel.dart';

class PieChartSection extends StatelessWidget {
  const PieChartSection({super.key, required this.models});

  final List<StorageDetailsItemModel> models;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        startDegreeOffset: -90,
        titleSunbeamLayout: true,
        sections: [
          PieChartSectionData(
            color: const Color(0xff2697ff),
            value: models[0].fileSize,
            showTitle: false,
            radius: 25,
          ),
          PieChartSectionData(
            color: const Color(0xff26e5ff),
            value: models[1].fileSize,
            showTitle: false,
            radius: 22,
          ),
          PieChartSectionData(
            color: const Color(0xffffcf26),
            value: models[2].fileSize,
            showTitle: false,
            radius: 19,
          ),
          PieChartSectionData(
            color: const Color(0xffee2727),
            value: models[3].fileSize,
            showTitle: false,
            radius: 16,
          ),
          PieChartSectionData(
            color: const Color(0xff2a3752),
            value: 50 - (models[0].fileSize + models[1].fileSize + models[2].fileSize + models[3].fileSize),
            showTitle: false,
            radius: 13,
          ),
        ],
      ),
    );
  }
}
