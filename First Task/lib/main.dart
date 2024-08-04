import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/CustomDrawer.dart';

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
      appBar: AppBar(),
      drawer: const CustomDrawer(),
      body: Container(),
    );
  }
}




