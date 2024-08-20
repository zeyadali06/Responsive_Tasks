import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/TopBar.dart';
import 'package:responsive_designs/Widgets/SalesOverview.dart';
import 'package:responsive_designs/Widgets/CustomCalendar.dart';
import 'package:responsive_designs/Widgets/TabletCustomerSection.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleListView.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleStatistics.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const TopBar(),
            const TabletCustomerSection(),
            Expanded(
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(child: SalesOverview(values: [7700, 6500, 4200, 5000, 7400, 9200, 6300, 7400, 3800, 5000, 7200, 8500])),
                        SizedBox(height: 15),
                        UpcomingScheduleStatistics(),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        CustomCalendar(onDaySelected: (DateTime date) {}),
                        const SizedBox(height: 10),
                        Expanded(child: UpcomingScheduleListView()),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
