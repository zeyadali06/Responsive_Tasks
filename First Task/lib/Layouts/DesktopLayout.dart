import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/TabletBody.dart';
import 'package:responsive_designs/Widgets/CustomDrawer.dart';

class DesktopLayout extends StatelessWidget {
  DesktopLayout({super.key, required this.width});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 18,
          child: CustomDrawer(scaffoldKey: scaffoldKey),
        ),
        Expanded(
          flex: 63,
          child: TabletBody(width: width - ((width * 18) / (18 + 63))),
        ),
      ],
    );
  }
}
