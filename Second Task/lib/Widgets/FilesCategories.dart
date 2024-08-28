import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/CustomContainer.dart';

class FileCategories extends StatelessWidget {
  const FileCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(child: Container()),
        CustomContainer(child: Container()),
        CustomContainer(child: Container()),
        CustomContainer(child: Container()),
      ],
    );
  }
}
