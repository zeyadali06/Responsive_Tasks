import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/TopBar.dart';
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
      body: Row(
        children: [
          CustomDrawer(),
          const SizedBox(width: 20),
          const Expanded(
            child: Column(
              children: [
                SizedBox(height: 25),
                TopBar(),
                SizedBox(height: 25),
              ],
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
