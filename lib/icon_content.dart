import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';



class IconContent extends StatelessWidget {
  IconContent({required this.icon ,  required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          icon,
          size: 60.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          label, style: labelTextStyle,
        ),
      ],
    );
  }
}