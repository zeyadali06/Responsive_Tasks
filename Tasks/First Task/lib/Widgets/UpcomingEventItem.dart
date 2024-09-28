import 'package:flutter/material.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';

class UpcomingEventItem extends StatelessWidget {
  const UpcomingEventItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: const BoxDecoration(color: Color(0xff334225), borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(
        title,
        style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 8), color: const Color(0xff6dad1e), fontWeight: FontWeight.w600),
      ),
    );
  }
}
