import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/CustomDrawer.dart';
import 'package:responsive_designs/Widgets/MobileBody.dart';
import 'package:responsive_designs/Widgets/MobileLayoutAppBar.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xff101214),
      appBar: const MobileLayoutAppBar(),
      drawer: CustomDrawer(scaffoldKey: scaffoldKey),
      body: MobileBody(),
    );
  }
}
