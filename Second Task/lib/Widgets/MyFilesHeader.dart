import 'package:flutter/material.dart';

class MyFilesHeader extends StatelessWidget {
  const MyFilesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'My Files',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        MaterialButton(
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
      ],
    );
  }
}
