import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/DrawerItemModel.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';
import 'package:responsive_designs/constants.dart';

class SelectedDrawerItem extends StatelessWidget {
  const SelectedDrawerItem({super.key, required this.model});

  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 40,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: const BorderSide(width: 0)),
      tileColor: kPrimaryColor,
      leading: Icon(model.icon, color: Colors.black, size: 18),
      title: Text(
        model.title,
        style: TextStyle(color: Colors.black, fontSize: getResponsiveFontSize(context: context, fontSize: 12), fontWeight: FontWeight.bold),
      ),
    );
  }
}
