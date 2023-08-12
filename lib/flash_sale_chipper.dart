import 'package:flutter/material.dart';

class FlashSaleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final protrusionHeight = 20.0; // Height of the extruded edge

    path.moveTo(0, protrusionHeight);
    path.quadraticBezierTo(size.width / 2, 0, size.width, protrusionHeight);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
