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
        const SizedBox(width: 25),
        SvgPicture.asset(model.svgPath),
        const SizedBox(width: 15),
        Expanded(
          child: SizedBox(
            child: Text(
              model.fileName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: SizedBox(
            child: Text(
              model.date,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: SizedBox(
            child: Text(
              model.size,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
