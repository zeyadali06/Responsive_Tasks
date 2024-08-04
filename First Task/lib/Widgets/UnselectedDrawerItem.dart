import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/DrawerItemModel.dart';

class UnSelectedDrawerItem extends StatelessWidget {
  const UnSelectedDrawerItem({super.key, required this.model});

  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 40,
      leading: Icon(model.icon, color: Colors.white, size: 18),
      title: Text(model.title, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300)),
    );
  }
}
