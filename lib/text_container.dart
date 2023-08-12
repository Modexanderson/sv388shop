import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String text;
  final Color? containerCcolor;
  final Color? textCcolor;
  final double? fontSize;
  const TextContainer(
      {required this.text,
      this.containerCcolor,
      this.textCcolor,
      this.fontSize,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerCcolor, // Set the color of the rectangle
      padding: const EdgeInsets.all(16), // Add padding inside the rectangle
      child: Text(
        text, // Text to be displayed inside the rectangle
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: textCcolor, // Set the color of the text
        ),
      ),
    );
  }
}
