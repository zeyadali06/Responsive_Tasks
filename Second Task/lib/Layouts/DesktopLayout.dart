import 'package:flutter/material.dart';
import 'package:secondtask/Layouts/TabletLayout.dart';
import 'package:secondtask/Widgets/CustomDrawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 32, child: CustomDrawer()),
        const Expanded(flex: 160, child: TabletLayout()),
      ],
    );
  }
}
