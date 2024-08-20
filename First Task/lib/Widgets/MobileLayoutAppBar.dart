import 'dart:math';
import 'package:flutter/material.dart';

class MobileLayoutAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileLayoutAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xff101214),
      foregroundColor: Colors.white,
      actions: [
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(50)),
          child: Transform.rotate(
            angle: -(pi / 4),
            child: IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.nightlight_outlined, size: 18, color: Color(0xff1d1d1d)),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.add_alert_outlined, size: 20, color: Color(0xff1d1d1d)),
          ),
        ),
        const SizedBox(width: 15),
        const CircleAvatar(radius: 16),
        const SizedBox(width: 15),
      ],
    );
  }
}
