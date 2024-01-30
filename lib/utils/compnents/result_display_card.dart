// Import necessary packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Define a reusable display card widget
class DisplayCard extends StatelessWidget {
  // Constructor for the DisplayCard widget with required and optional parameters
  const DisplayCard({
    super.key,
    required this.mainColor,
    required this.borderColor,
    required this.title,
    required this.text,
    required this.borderRadius,
    this.titleIndent,
    this.textColor,
    this.alignment,
  });

  // Required parameters
  final Color mainColor;
  final Color borderColor;
  final String title;
  final String text;
  final double borderRadius;

  // Optional parameters with default values
  final bool? titleIndent;
  final Color? textColor;
  final CrossAxisAlignment? alignment;

  @override
  Widget build(BuildContext context) {
    // Return a container with specified decoration, margin, and child widgets
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: alignment ?? CrossAxisAlignment.center,
        children: [
          // Conditionally add space above title based on 'titleIndent'
          if (titleIndent ?? false) const SizedBox(height: 20),

          // Display title with specified style and padding
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ).paddingAll(8),

          // Add a divider with specified color and height
          Divider(
            color: borderColor,
            height: 5,
          ),

          // Display text with specified style and padding
          Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ).paddingAll(8),
        ],
      ),
    );
  }
}
