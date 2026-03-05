import 'package:flutter/material.dart';

double getResponsiveSize({
  required BuildContext context,
  required double baseFontSize,
}) {
  double responsiveFontSize = baseFontSize * getScaleFactor(context);
  double lowerFontSize = baseFontSize * 0.8;
  double upperFontSize = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerFontSize, upperFontSize);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
