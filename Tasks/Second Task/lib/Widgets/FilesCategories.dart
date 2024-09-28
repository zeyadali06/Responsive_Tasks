import 'package:flutter/material.dart';
import 'package:secondtask/assets.dart';
import 'package:secondtask/Models/FileCategoryModel.dart';
import 'package:secondtask/Widgets/FileCategoryContainer.dart';
import 'package:secondtask/constants.dart';

class FileCategories extends StatelessWidget {
  FileCategories({super.key});

  final List<FileCategoryModel> models = [
    FileCategoryModel(svgPath: Assets.assetsIconsDocuments, color: const Color(0xff2697ff), title: 'Documents', numberOfFiles: 1328, storage: 1.9),
    FileCategoryModel(svgPath: Assets.assetsIconsGoogleDrive, color: const Color(0xffffa113), title: 'Google Drive', numberOfFiles: 1328, storage: 2.9),
    FileCategoryModel(svgPath: Assets.assetsIconsOneDrive, color: const Color(0xffa4cdff), title: 'One Drive', numberOfFiles: 1328, storage: 1),
    FileCategoryModel(svgPath: Assets.assetsIconsDropBox, color: const Color(0xff007ee5), title: 'Documents', numberOfFiles: 5328, storage: 7.3),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: models.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: constraints.maxWidth > 500 ? 4 : 2,
          mainAxisSpacing: kPadding,
          crossAxisSpacing: kPadding,
          mainAxisExtent: 160,
        ),
        itemBuilder: (context, index) {
          return FileCategoryContainer(model: models[index]);
        },
      );
    });
  }
}
