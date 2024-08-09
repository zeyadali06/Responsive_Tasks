import 'dart:math';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Hello, ', style: TextStyle(fontSize: 20)),
                Text('Anthony!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(height: 5),
            Text("Here's your overview of your business!", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(50)),
              child: Transform.rotate(
                angle: -(pi / 4),
                child: IconButton(padding: const EdgeInsets.all(0), onPressed: () {}, icon: const Icon(Icons.nightlight_outlined, size: 18, color: Color(0xff1d1d1d))),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(50)),
              child: IconButton(padding: const EdgeInsets.all(0), onPressed: () {}, icon: const Icon(Icons.add_alert_outlined, size: 20, color: Color(0xff1d1d1d))),
            ),
            const SizedBox(width: 15),
            const CircleAvatar(radius: 16),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Anthony Alverizko', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                Text('anthony.alve@gmail.com', style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
