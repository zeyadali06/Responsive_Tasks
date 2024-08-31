import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/UserContainer.dart';
import 'package:secondtask/Widgets/TopBarTextField.dart';

class TabletTopBar extends StatelessWidget {
  const TabletTopBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        const SizedBox(width: 10),
        const Text(
          'Dashboard',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        const Expanded(child: SizedBox()),
        const TopBarTextField(),
        const SizedBox(width: 15),
        const UserContainer(),
      ],
    );
  }
}
