import 'package:flutter/material.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';
import 'package:responsive_designs/constants.dart';
import 'package:responsive_designs/Widgets/BarChartSection.dart';
import 'package:responsive_designs/Widgets/DateDropDownMenu.dart';

class SalesOverview extends StatelessWidget {
  const SalesOverview({super.key, required this.values});

  final List<double> values;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadius),
        border: Border.all(width: .7, color: Colors.black12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Sales Overview',
                    style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 18), fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              DateDropDownMenu(onChanged: (val) {}),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(child: BarChartSection(values: values)),
        ],
      ),
    );
  }
}
