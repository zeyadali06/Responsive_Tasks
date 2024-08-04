import 'package:flutter/material.dart';
import 'package:responsive_designs/constants.dart';

class UpComingEventSection extends StatelessWidget {
  const UpComingEventSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: const Color(0xff232527), borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('UPCOMING EVENT', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w300)),
          const SizedBox(height: 10),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Business Sprint', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
                  Text('10:35 AM - 11:30 AM', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w300)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      UpcomingEventItem(title: 'Business'),
                      SizedBox(width: 5),
                      UpcomingEventItem(title: 'Meeting'),
                    ],
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_circle_right_rounded, color: kPrimaryColor, size: 30),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class UpcomingEventItem extends StatelessWidget {
  const UpcomingEventItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: const BoxDecoration(color: Color(0xff334225), borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(title, style: const TextStyle(fontSize: 8, color: Color(0xff6dad1e), fontWeight: FontWeight.w600)),
    );
  }
}
