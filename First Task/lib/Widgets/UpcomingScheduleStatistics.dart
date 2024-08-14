import 'package:responsive_designs/constants.dart';
import 'package:flutter/material.dart';

class UpcomingScheduleStatistics extends StatelessWidget {
  const UpcomingScheduleStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: kPadding, right: 7.5, bottom: kPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: .7, color: Colors.black12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Upcoming Schedule', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
              GestureDetector(onTap: () {}, child: const Icon(Icons.more_horiz, size: 16)),
            ],
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              double desktopPerc = .3112;
              double mobilePerc = .6288;

              double desktopWidthPerc = desktopPerc;
              double mobileWidthPerc = mobilePerc;
              double totalWidth = constraints.maxWidth - 10;

              if (desktopWidthPerc + mobileWidthPerc != 1) {
                desktopWidthPerc += (1 - (desktopWidthPerc + mobileWidthPerc));
                mobileWidthPerc += (1 - (desktopWidthPerc + mobileWidthPerc));
              }

              return Row(
                children: [
                  UsersStatisticsSection(
                    title: 'Desktop Users',
                    percentage: desktopPerc,
                    difference: -15,
                    width: totalWidth * desktopWidthPerc,
                  ),
                  const SizedBox(width: 10),
                  UsersStatisticsSection(
                    title: 'Mobile Users',
                    percentage: mobilePerc,
                    difference: -15,
                    width: totalWidth * mobileWidthPerc,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class UsersStatisticsSection extends StatelessWidget {
  const UsersStatisticsSection({super.key, required this.title, required this.percentage, required this.difference, required this.width});
  final String title;
  final double percentage;
  final double difference;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 10)),
          const SizedBox(height: 10),
          Text("${(percentage * 100).toStringAsFixed(2)}%", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
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
          Text("$difference% from the last month", style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
