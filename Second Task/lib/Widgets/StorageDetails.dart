import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/CustomContainer.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Storage Details', style: TextStyle(fontSize: 18, color: Colors.white)),
        ],
      ),
    );
  }
}
