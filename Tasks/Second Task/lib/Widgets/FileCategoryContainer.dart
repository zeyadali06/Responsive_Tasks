import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/ScaleDown.dart';
import 'package:secondtask/constants.dart';
import 'package:secondtask/Widgets/CustomContainer.dart';
import 'package:secondtask/Models/FileCategoryModel.dart';

class FileCategoryContainer extends StatelessWidget {
  const FileCategoryContainer({super.key, required this.model});

  final FileCategoryModel model;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ScaleDown(
                child: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: model.color.withOpacity(.1),
                    borderRadius: BorderRadius.circular(kRadius),
                  ),
                  child: SvgPicture.asset(model.svgPath),
                ),
              ),
              const ScaleDown(
                child: Icon(Icons.more_vert, color: Color(0xff9d9fa6)),
              ),
            ],
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    Container(
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                        color: model.color.withOpacity(.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * (model.storage / 10),
                      decoration: BoxDecoration(
                        color: model.color,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ScaleDown(
                child: Text(
                  model.numberOfFiles.toString(),
                  style: const TextStyle(color: Color(0xffc0c0c5), fontSize: 12),
                ),
              ),
              const SizedBox(width: 5),
              ScaleDown(
                child: Text(
                  "${model.storage.toStringAsFixed(1)}GB",
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
