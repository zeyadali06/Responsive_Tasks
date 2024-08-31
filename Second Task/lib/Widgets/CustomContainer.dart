import 'package:flutter/material.dart';
import 'package:secondtask/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, this.child, this.height, this.width, this.constraints});

  final Widget? child;
  final double? height;
  final double? width;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPadding),
      height: height,
      width: width,
      constraints: constraints,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(kRadius),
      ),
      child: child,
    );
  }
}
