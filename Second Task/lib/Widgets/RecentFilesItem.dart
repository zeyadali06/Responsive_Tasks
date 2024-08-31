import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secondtask/Models/RecentFilesItemModel.dart';

class RecentFilesItem extends StatelessWidget {
  const RecentFilesItem({super.key, required this.model});
  final RecentFilesItemModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: SizedBox(
            child: Row(
              children: [
                const SizedBox(width: 25),
                SvgPicture.asset(model.svgPath),
                const SizedBox(width: 15),
                Text(
                  model.fileName,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
            child: Text(
              model.date,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
            child: Text(
              model.size,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
