import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/TabletBody.dart';
import 'package:responsive_designs/Widgets/CustomDrawer.dart';

class DesktopLayout extends StatelessWidget {
  DesktopLayout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 180,
          child: CustomDrawer(scaffoldKey: scaffoldKey),
        ),
        const Expanded(
          flex: 730,
          child: TabletBody(),
        ),
      ],
    );
  }
}
