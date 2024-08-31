import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/ScaleDown.dart';
import 'package:secondtask/Widgets/TopBarTextField.dart';
import 'package:secondtask/Widgets/UserContainer.dart';

class MobileTopBar extends StatelessWidget {
  const MobileTopBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        const SizedBox(width: 15),
        const ScaleDown(child: TopBarTextField()),
        const SizedBox(width: 15),
        const ScaleDown(child: UserContainer()),
      ],
    );
  }
}
