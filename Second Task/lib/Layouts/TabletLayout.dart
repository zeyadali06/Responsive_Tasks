import 'package:flutter/material.dart';
import 'package:secondtask/constants.dart';
import 'package:secondtask/Widgets/MyFiles.dart';
import 'package:secondtask/Widgets/TabletTopBar.dart';
import 'package:secondtask/Widgets/StorageDetails.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const SizedBox(height: kPadding),
          TabletTopBar(scaffoldKey: scaffoldKey),
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
    );
  }
}
