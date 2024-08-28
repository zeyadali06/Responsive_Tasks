import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/UserContainer.dart';
import 'package:secondtask/Widgets/TopBarTextField.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Dashboard',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TopBarTextField(),
            SizedBox(width: 15),
            UserContainer(),
          ],
        ),
      ],
    );
  }
}
