import 'package:flutter/material.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';

class RowElement extends StatelessWidget {
  const RowElement({super.key, required this.leftText, required this.rightText, required this.fontSize, this.fontWeight = FontWeight.normal});

  final String leftText;
  final String rightText;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              leftText,
              style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: fontSize), fontWeight: fontWeight),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              rightText,
              style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: fontSize), fontWeight: fontWeight),
            ),
          ),
        ),
      ],
    );
  }
}
