import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/MyFilesHeader.dart';
import 'package:secondtask/constants.dart';
import 'package:secondtask/Widgets/RecentFiles.dart';
import 'package:secondtask/Widgets/FilesCategories.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyFilesHeader(),
        const SizedBox(height: kPadding),
        FileCategories(),
        const SizedBox(height: kPadding),
        RecentFiles(),
      ],
    );
  }
}
