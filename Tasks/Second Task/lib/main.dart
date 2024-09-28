import 'package:flutter/material.dart';
import 'package:secondtask/Layouts/MobileLayout.dart';
import 'package:secondtask/Layouts/TabletLayout.dart';
import 'package:secondtask/Layouts/DesktopLayout.dart';
import 'package:secondtask/Widgets/CustomDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xff212332),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return MobileLayout(scaffoldKey: scaffoldKey);
            } else if (constraints.maxWidth < 900) {
              return TabletLayout(scaffoldKey: scaffoldKey);
            } else {
              return const DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
