import 'package:flutter/material.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';
import 'package:responsive_designs/constants.dart';

class UsersStatisticsSection extends StatelessWidget {
  const UsersStatisticsSection({super.key, required this.title, required this.percentage, required this.difference, required this.width});
  final String title;
  final double percentage;
  final double difference;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 10)),
            ),
          ),
          const SizedBox(height: 10),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "${(percentage * 100).toStringAsFixed(2)}%",
              style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 22), fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 30,
            width: width,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(height: 10),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "$difference% from the last month",
              style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 10), fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
