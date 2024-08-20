import 'package:flutter/material.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';
import 'package:responsive_designs/Widgets/UpcomingEventItem.dart';
import 'package:responsive_designs/constants.dart';

class UpComingEventSection extends StatelessWidget {
  const UpComingEventSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(color: const Color(0xff232527), borderRadius: BorderRadius.circular(kRadius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'UPCOMING EVENT',
                style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(context: context, fontSize: 10), fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(child: SizedBox(width: 15)),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Sprint',
                    style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(context: context, fontSize: 15), fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '10:35 AM - 11:30 AM',
                    style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(context: context, fontSize: 10), fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 10),
                  const Row(
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
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.arrow_circle_right_rounded, color: kPrimaryColor, size: 30),
              ),
              const Flexible(child: SizedBox(width: 15)),
            ],
          ),
        ],
      ),
    );
  }
}
