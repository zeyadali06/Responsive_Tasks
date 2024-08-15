import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/UpcomingScheduleListViewItemModel.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleListViewItem.dart';
import 'package:responsive_designs/constants.dart';

class UpcomingScheduleListView extends StatelessWidget {
  UpcomingScheduleListView({super.key});

  final List<UpcomingScheduleListViewItemModel> models = [
    UpcomingScheduleListViewItemModel(day: "Wed, 11 Jan", time: "09:30 AM", title: "Business Analytics Press", description: "David McGuaire and 20+ more"),
    UpcomingScheduleListViewItemModel(day: "Wed, 11 Jan", time: "10:35 AM", title: "Business Sprint", description: "Jonas Kahnwald and 5+ more"),
    UpcomingScheduleListViewItemModel(day: "Wed, 11 Jan", time: "1:15 PM", title: "Customer Review Meeting", description: "Natashia Bahralf and 6+ more"),
    UpcomingScheduleListViewItemModel(day: "Wed, 11 Jan", time: "2:45 AM", title: "Daily Office Meeting", description: "Alexa Martha and 32+ more"),
    UpcomingScheduleListViewItemModel(day: "Thu, 12 Jan", time: "09:30 AM", title: "Sales Strategy Meeting", description: "Frederinn Kowalski and 12+ more"),
    UpcomingScheduleListViewItemModel(day: "Thu, 12 Jan", time: "10:35 AM", title: "Markting Sales", description: "David McGuaire and 20+ more"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.only(left: 7.5, right: kPadding, bottom: kPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kRadius),
          border: Border.all(width: .7, color: Colors.black12),
        ),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Upcoming Schedule', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                  GestureDetector(onTap: () {}, child: const Icon(Icons.more_horiz, size: 16)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: models.length,
                itemBuilder: (BuildContext context, int index) {
                  return UpcomingScheduleListViewItem(item: models[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
