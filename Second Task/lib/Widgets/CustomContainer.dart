import 'package:flutter/material.dart';
import 'package:secondtask/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPadding),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(kRadius),
      ),
      child: child,
    );
  }
}
