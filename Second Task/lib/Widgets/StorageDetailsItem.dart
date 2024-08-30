import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secondtask/Models/StorageDetailsItemModel.dart';

class StorageDetailsItem extends StatelessWidget {
  const StorageDetailsItem({super.key, required this.model});
  final StorageDetailsItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff2a3d5b), width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(model.svgPath, height: 20),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      "${model.numberOfFiles.toString()} Files",
                      style: const TextStyle(color: Color(0xffb5b6bc), fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            Text(
              "${model.fileSize.toStringAsFixed(1)}GB",
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
