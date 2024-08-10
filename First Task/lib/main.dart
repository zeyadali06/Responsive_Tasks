import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/TopBar.dart';
import 'package:responsive_designs/Widgets/CustomDrawer.dart';
import 'package:responsive_designs/Widgets/CustomerSection.dart';

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
      body: Row(
        children: [
          const CustomDrawer(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const TopBar(),
                    const SizedBox(height: 30),
                    CustomerSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
