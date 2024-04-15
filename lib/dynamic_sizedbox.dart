library dynamic_sizedbox;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FigmaConstants {
  static const double figmaDeviceHeight = 852;
  static const double figmaDeviceWidth = 393;
}

/// Full height of the device
double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

/// Full width of the device
double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

/// Space between horizontal items
double spacingVertical(BuildContext context,
    {required double height, required double figmaDeviceHeight}) {
  return (screenHeight(context) * height) / figmaDeviceHeight;
}

/// Space between vertical items
double spacingHorizontal(BuildContext context,
    {required double width, required double figmaDeviceWidth}) {
  return (screenWidth(context) * width) / figmaDeviceWidth;
}

class DynamicSizedBox extends StatelessWidget {
  final double height;
  final double width;
  final double figmaDeviceHeight;
  final double figmaDeviceWidth;
  const DynamicSizedBox(
      {super.key,
      this.height = 5,
      this.width = 2,
      this.figmaDeviceHeight = 852,
      this.figmaDeviceWidth = 393});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: spacingHorizontal(
        context,
        width: width,
        figmaDeviceWidth: figmaDeviceWidth,
      ),
      height: spacingVertical(
        context,
        height: height,
        figmaDeviceHeight: figmaDeviceHeight,
      ),
    );
  }
}
