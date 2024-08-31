import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/UserContainer.dart';
import 'package:secondtask/Widgets/TopBarTextField.dart';

class DesktopTopBar extends StatelessWidget {
  const DesktopTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Dashboard',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        Expanded(child: SizedBox()),
        TopBarTextField(),
        SizedBox(width: 15),
        UserContainer(),
      ],
    );
  }
}
