import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/FilesCategories.dart';
import 'package:secondtask/Widgets/MobileTopBar.dart';
import 'package:secondtask/Widgets/MyFilesHeader.dart';
import 'package:secondtask/Widgets/RecentFiles.dart';
import 'package:secondtask/Widgets/StorageDetails.dart';
import 'package:secondtask/constants.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        children: [
          MobileTopBar(scaffoldKey: scaffoldKey),
          const SizedBox(height: kPadding),
          const MyFilesHeader(),
          const SizedBox(height: kPadding),
          FileCategories(),
          const SizedBox(height: kPadding),
          RecentFiles(),
          const SizedBox(height: kPadding),
          StorageDetails(),
        ],
      ),
    );
  }
}
