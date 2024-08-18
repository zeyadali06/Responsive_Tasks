import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/DrawerItemModel.dart';
import 'package:responsive_designs/Widgets/SelectedDrawerItem.dart';
import 'package:responsive_designs/Widgets/UnselectedDrawerItem.dart';

class AllDrawerItems extends StatefulWidget {
  const AllDrawerItems({super.key});

  @override
  State<AllDrawerItems> createState() => _AllDrawerItemsState();
}

class _AllDrawerItemsState extends State<AllDrawerItems> {
  List<DrawerItemModel> models = [
    const DrawerItemModel(title: 'Business Overview', icon: Icons.square),
    const DrawerItemModel(title: 'Analytics', icon: Icons.analytics_sharp),
    const DrawerItemModel(title: 'Business Explore', icon: Icons.connect_without_contact_sharp),
    const DrawerItemModel(title: 'Customers', icon: Icons.person_outline),
    const DrawerItemModel(title: 'Messages', icon: Icons.email_outlined),
    const DrawerItemModel(title: 'Customer Reviews', icon: Icons.star_outline_rounded),
    const DrawerItemModel(title: 'Settings', icon: Icons.settings_outlined),
    const DrawerItemModel(title: 'Help Center', icon: Icons.help_center_outlined),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: models.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (index == 0)
              const Column(
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('MAIN MENU', style: TextStyle(color: Colors.white, fontSize: 11)),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            if (index == 4)
              const Column(
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('SETTINGS', style: TextStyle(color: Colors.white, fontSize: 11)),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  activeIndex = index;
                  setState(() {});
                }
              },
              child: activeIndex == index ? SelectedDrawerItem(model: models[index]) : UnSelectedDrawerItem(model: models[index]),
            )
          ],
        );
      },
    );
  }
}
