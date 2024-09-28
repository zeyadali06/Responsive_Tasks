import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/ScaleDown.dart';

class MyFilesHeader extends StatelessWidget {
  const MyFilesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ScaleDown(
          child: Text(
            'My Files',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        ScaleDown(
          child: MaterialButton(
            onPressed: () {},
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.blue,
            child: const Row(
              children: [
                Icon(Icons.add, color: Colors.white, size: 20),
                SizedBox(width: 5),
                Text(
                  'Add New',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
