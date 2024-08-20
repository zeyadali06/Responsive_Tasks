import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/CustomDrawer.dart';
import 'package:responsive_designs/Widgets/TabletBody.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101214),
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: const Color(0xff101214),
        foregroundColor: Colors.white,
      ),
      drawer: CustomDrawer(scaffoldKey: scaffoldKey),
      body: const TabletBody(),
    );
  }
}
