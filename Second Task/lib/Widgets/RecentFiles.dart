import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/CustomContainer.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          Text(
            'Recent Files',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
