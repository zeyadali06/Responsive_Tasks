import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secondtask/assets.dart';
import 'package:secondtask/Models/DrawerItemModel.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashboard", path: Assets.assetsIconsMenuDashboard),
    DrawerItemModel(title: "Transaction", path: Assets.assetsIconsMenuTran),
    DrawerItemModel(title: "Task", path: Assets.assetsIconsMenuTask),
    DrawerItemModel(title: "Documents", path: Assets.assetsIconsMenuDoc),
    DrawerItemModel(title: "Store", path: Assets.assetsIconsMenuStore),
    DrawerItemModel(title: "Notification", path: Assets.assetsIconsMenuNotification),
    DrawerItemModel(title: "Profile", path: Assets.assetsIconsMenuProfile),
    DrawerItemModel(title: "Settings", path: Assets.assetsIconsMenuSetting),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> columnChildren = [
      DrawerHeader(child: Image.asset(Assets.assetsImagesLogo)),
    ];
    columnChildren.addAll(
      List.generate(drawerItems.length, (int index) {
        return ListTile(
          onTap: () {},
          hoverColor: const Color(0xff262429),
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            drawerItems[index].path,
            colorFilter: const ColorFilter.mode(Color(0xff9b9b9d), BlendMode.srcIn),
            height: 16,
          ),
          title: Text(
            drawerItems[index].title,
            style: const TextStyle(color: Color(0xff9b9b9d), fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w500),
          ),
        );
      }),
    );

    return Drawer(
      backgroundColor: const Color(0xff1d1b20),
      child: SingleChildScrollView(
        child: Column(
          children: columnChildren,
        ),
      ),
    );
  }
}
