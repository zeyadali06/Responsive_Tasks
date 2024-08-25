import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/TopBar.dart';
import 'package:responsive_designs/Widgets/SalesOverview.dart';
import 'package:responsive_designs/Widgets/TabletCustomerSection.dart';
import 'package:responsive_designs/Widgets/CustomCalendar.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleListView.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleStatistics.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const SliverToBoxAdapter(child: TopBar()),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: TabletCustomerSection(width: width)),
          SliverToBoxAdapter(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                const Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 2 / 1,
                        child: SalesOverview(
                          values: [7700, 6500, 4200, 5000, 7400, 9200, 6300, 7400, 3800, 5000, 7200, 8500],
                        ),
                      ),
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
                      AspectRatio(
                        aspectRatio: 1,
                        child: UpcomingScheduleListView(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }
}
