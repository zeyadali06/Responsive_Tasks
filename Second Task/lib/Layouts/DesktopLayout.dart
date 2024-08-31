import 'package:flutter/material.dart';
import 'package:secondtask/constants.dart';
import 'package:secondtask/Widgets/MyFiles.dart';
import 'package:secondtask/Widgets/CustomDrawer.dart';
import 'package:secondtask/Widgets/DesktopTopBar.dart';
import 'package:secondtask/Widgets/StorageDetails.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 32, child: CustomDrawer()),
        Expanded(
          flex: 160,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Column(
              children: [
                const SizedBox(height: kPadding),
                const DesktopTopBar(),
                const SizedBox(height: kPadding),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(flex: 2, child: MyFiles()),
                    const SizedBox(width: kPadding),
                    Expanded(flex: 1, child: StorageDetails()),
                  ],
                ),
                const SizedBox(height: kPadding),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
