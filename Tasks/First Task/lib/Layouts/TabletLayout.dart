import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/CustomDrawer.dart';
import 'package:responsive_designs/Widgets/TabletBody.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key, required this.width});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xff101214),
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: const Color(0xff101214),
        foregroundColor: Colors.white,
      ),
      drawer: CustomDrawer(scaffoldKey: scaffoldKey),
      body: TabletBody(width: width),
    );
  }
}
