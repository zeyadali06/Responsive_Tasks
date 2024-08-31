import 'package:flutter/material.dart';
import 'package:secondtask/Layouts/MobileLayout.dart';
import 'package:secondtask/Layouts/TabletLayout.dart';
import 'package:secondtask/Layouts/DesktopLayout.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212332),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return const MobileLayout();
            } else if (constraints.maxWidth < 900) {
              return const TabletLayout();
            } else {
              return const DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
