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


/// Space between horizontal items
double spacingVertical(BuildContext context,{required double height}) {
  return (screenHeight(context) * height) /FigmaConstants.figmaDeviceHeight;
}

class DynamicSizedBox extends StatelessWidget {
  final double height;
  const DynamicSizedBox({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: spacingVertical(
      context,
      height: height,
    ));
  }
}
