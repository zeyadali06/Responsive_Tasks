import 'package:flutter/material.dart';
import 'package:responsive_designs/constants.dart';
import 'package:responsive_designs/Widgets/RowElement.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';

class UpcomingScheduleStatistics extends StatelessWidget {
  const UpcomingScheduleStatistics({super.key});
  final double desktopPerc = .3000;
  final double mobilePerc = .6400;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadius),
        border: Border.all(width: .7, color: Colors.black12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Upcoming Schedule',
                    style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 12), fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              GestureDetector(onTap: () {}, child: const Icon(Icons.more_horiz, size: 16)),
            ],
          ),
          const SizedBox(height: 20),
          Flexible(
            child: Column(
              children: [
                const RowElement(
                  leftText: "Desktop Users",
                  rightText: "Mobile Users",
                  fontSize: 10,
                ),
                const SizedBox(height: 10),
                RowElement(
                  leftText: "${(desktopPerc * 100).toStringAsFixed(2)}%",
                  rightText: "${(mobilePerc * 100).toStringAsFixed(2)}%",
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: (desktopPerc * 100).toInt(),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    if (desktopPerc + mobilePerc < 1)
                      Expanded(
                        flex: ((1 - (desktopPerc + mobilePerc)) * 100).toInt(),
                        child: const SizedBox(width: 10),
                      )
                    else
                      const SizedBox(width: 10),
                    Expanded(
                      flex: (mobilePerc * 100).toInt(),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const RowElement(
                  leftText: "-15% from the last month",
                  rightText: "-15% from the last month",
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
