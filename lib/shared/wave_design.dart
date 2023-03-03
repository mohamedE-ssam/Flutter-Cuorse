import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.75);
    // path.quadraticBezierTo(size.width * 0.8, size.height * 0.9,
    //     size.width * 0.55, size.height * 0.78);
    // path.quadraticBezierTo(
    //     size.width * 0.3, size.height * 0.61, 0, size.height * 0.62);

    // path.close();
    path.lineTo(0, size.height - 80);
    path.cubicTo(
      size.width / 2 * 0.6,
      size.height * 0.5,
      size.width * 2 / 2,
      size.height * 1.2,
      size.width * 1.2,
      size.height / 1.5,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
