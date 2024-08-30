import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/ScaleDown.dart';
import 'package:secondtask/assets.dart';
import 'package:secondtask/constants.dart';
import 'package:secondtask/Widgets/CustomContainer.dart';
import 'package:secondtask/Widgets/PieChartSection.dart';
import 'package:secondtask/Widgets/StorageDetailsItem.dart';
import 'package:secondtask/Models/StorageDetailsItemModel.dart';

class StorageDetails extends StatelessWidget {
  StorageDetails({super.key});

  final List<StorageDetailsItemModel> models = [
    StorageDetailsItemModel(svgPath: Assets.assetsIconsDocuments, title: 'Documents Files', numberOfFiles: 1328, fileSize: 1.3),
    StorageDetailsItemModel(svgPath: Assets.assetsIconsMedia, title: 'Media Files', numberOfFiles: 1328, fileSize: 15.3),
    StorageDetailsItemModel(svgPath: Assets.assetsIconsFolder, title: 'Other Files', numberOfFiles: 1328, fileSize: 1.3),
    StorageDetailsItemModel(svgPath: Assets.assetsIconsUnknown, title: 'Unknown', numberOfFiles: 140, fileSize: 1.3),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Storage Details',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                PieChartSection(models: models),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ScaleDown(
                          child: Text(
                            '29.1',
                            style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500, height: .5),
                          ),
                        ),
                        ScaleDown(
                          child: Text(
                            'of 128GB',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: List.generate(models.length, (int index) {
              return Column(
                children: [
                  if (index > 0 && index < models.length) const SizedBox(height: kPadding),
                  StorageDetailsItem(model: models[index]),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
