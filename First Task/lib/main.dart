import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/CustomCalendar.dart';
import 'package:responsive_designs/Widgets/TopBar.dart';
import 'package:responsive_designs/Widgets/CustomDrawer.dart';
import 'package:responsive_designs/Widgets/SalesOverview.dart';
import 'package:responsive_designs/Widgets/CustomerSection.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleListView.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleStatistics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101214),
      body: Row(
        children: [
          const Expanded(
            flex: 180,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 730,
            child: Padding(
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
                    const SizedBox(height: 30),
                    const CustomerSection(),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Expanded(child: SalesOverview(values: [7700, 6500, 4200, 5000, 7400, 9200, 6300, 7400, 3800, 5000, 7200, 8500])),
                                UpcomingScheduleStatistics(),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                CustomCalendar(onDaySelected: (DateTime date) {}),
                                UpcomingScheduleListView(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
