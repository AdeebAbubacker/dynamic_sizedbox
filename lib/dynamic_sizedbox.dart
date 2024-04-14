library dynamic_sizedbox;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A Calculator.
class CustomButton extends StatelessWidget {
  var onPressed;
  final Widget child;
  var style;
  CustomButton({super.key, required this.onPressed,required  this.child, this.style});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        primary: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 9.0,
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
      child: child
    );
  }
}