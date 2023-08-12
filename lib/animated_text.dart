import 'package:flutter/material.dart';
import 'package:sv388shop/animated_shape.dart';

class AnimatedText extends StatelessWidget {
  final text;
  final fontSize;
  final color;
  const AnimatedText(
      {required this.text,
      required this.fontSize,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedShape(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
