import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/MyFiles.dart';
import 'package:secondtask/Widgets/StorageDetails.dart';
import 'package:secondtask/Widgets/TopBar.dart';
import 'package:secondtask/constants.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const SizedBox(height: kPadding),
          const TopBar(),
          const SizedBox(height: kPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(flex: 110, child: MyFiles()),
              const SizedBox(width: kPadding),
              Expanded(flex: 45, child: StorageDetails()),
            ],
          ),
          const SizedBox(height: kPadding),
        ],
      ),
    );
  }
}
