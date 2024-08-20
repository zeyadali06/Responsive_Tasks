import 'package:flutter/material.dart';
import 'package:responsive_designs/Layouts/MobileLayout.dart';
import 'package:responsive_designs/Layouts/TabletLayout.dart';
import 'package:responsive_designs/Layouts/DesktopLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101214),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return MobileLayout();
            } else if (constraints.maxWidth < 900) {
              return TabletLayout();
            } else {
              return DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
