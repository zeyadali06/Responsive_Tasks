import 'package:flutter/material.dart';
import 'package:secondtask/Widgets/MyFiles.dart';
import 'package:secondtask/Widgets/StorageDetails.dart';
import 'package:secondtask/Widgets/TopBar.dart';
import 'package:secondtask/Widgets/CustomDrawer.dart';
import 'package:secondtask/constants.dart';

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
          Expanded(flex: 32, child: CustomDrawer()),
          const SizedBox(width: kPadding),
           Expanded(
            flex: 160,
            child: Column(
              children: [
                SizedBox(height: kPadding),
                TopBar(),
                SizedBox(height: kPadding),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 110, child: MyFiles()),
                    SizedBox(width: kPadding),
                    Expanded(flex: 45, child: StorageDetails()),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: kPadding),
        ],
      ),
    );
  }
}
