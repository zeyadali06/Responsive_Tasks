import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/RecentFilesItem.dart';
import 'package:secondtask/Widgets/ScaleDown.dart';
import 'package:secondtask/assets.dart';
import 'package:secondtask/Widgets/CustomContainer.dart';
import 'package:secondtask/Models/RecentFilesItemModel.dart';

class RecentFiles extends StatelessWidget {
  RecentFiles({super.key});

  final List<RecentFilesItemModel> models = [
    RecentFilesItemModel(fileName: 'XD File', date: '01-03-2021', size: '3.5mb', svgPath: Assets.assetsIconsXdFile),
    RecentFilesItemModel(fileName: 'Figma File', date: '27-02-2021', size: '19.0mb', svgPath: Assets.assetsIconsFigmaFile),
    RecentFilesItemModel(fileName: 'Document', date: '23-02-2021', size: '32.5mb', svgPath: Assets.assetsIconsDocFile),
    RecentFilesItemModel(fileName: 'Sound File', date: '21-02-2021', size: '3.5mb', svgPath: Assets.assetsIconsSoundFile),
    RecentFilesItemModel(fileName: 'Media File', date: '23-02-2021', size: '2.5gb', svgPath: Assets.assetsIconsMediaFile),
    RecentFilesItemModel(fileName: 'Sales File', date: '25-02-2021', size: '3.5mb', svgPath: Assets.assetsIconsPdfFile),
    RecentFilesItemModel(fileName: 'Excel File', date: '25-02-2021', size: '34.5mb', svgPath: Assets.assetsIconsExcelFile),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      const Text(
        'Recent Files',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
      ),
      const SizedBox(height: 15),
      const Row(
        children: [
          Expanded(
            child: SizedBox(
              child: Row(
                children: [
                  SizedBox(width: 25),
                  Text('File Name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Text('Date', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Text('Size', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
    ];

    children.addAll(
      List.generate(models.length, (int index) {
        return Column(
          children: [
            const Divider(color: Color(0xff49454f), thickness: .75),
            RecentFilesItem(model: models[index]),
          ],
        );
      }),
    );

    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
