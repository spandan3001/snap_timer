import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayCard extends StatelessWidget {
  const DisplayCard(
      {super.key,
      required this.mainColor,
      required this.borderColor,
      required this.title,
      required this.text,
      required this.borderRadius,
      this.titleIndent,
      this.textColor,
      this.alignment});

  final Color mainColor;
  final Color borderColor;
  final String title;
  final String text;
  final double borderRadius;
  final bool? titleIndent;
  final Color? textColor;
  final CrossAxisAlignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      // Set border color to green
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: 1.0, // Set border width as desired
        ),
      ), // Set padding as desired
      child: Column(
        crossAxisAlignment: alignment ?? CrossAxisAlignment.center,
        children: [
          if (titleIndent ?? false) const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
                fontSize: 18.0,
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.bold),
          ).paddingAll(8),
          Divider(
            color: borderColor,
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 18.0,
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.bold),
          ).paddingAll(8),
        ],
      ),
    );
  }
}
