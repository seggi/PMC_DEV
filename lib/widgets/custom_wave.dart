import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WaveClipperBox extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 35);
    path.quadraticBezierTo(size.width / 10, 300, size.width / 2.2, 295);
    path.quadraticBezierTo(3.5 / 4 * size.width, 300, size.width, 230);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldChipper) {
    return true;
  }
}
