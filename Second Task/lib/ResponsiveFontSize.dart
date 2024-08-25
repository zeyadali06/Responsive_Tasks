import 'package:flutter/material.dart';

double getResponsiveFontSize({required BuildContext context, required double fontSize}) {
  double scaleFactor = getScaleFactor(context: context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .9;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor({required BuildContext context}) {
  double width = MediaQuery.of(context).size.width;
  if (width < 600) {
    return width / 500;
  } else if (width < 900) {
    return width / 800;
  } else {
    return width / 1100;
  }
}
