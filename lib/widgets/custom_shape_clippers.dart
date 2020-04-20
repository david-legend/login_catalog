import 'package:flutter/material.dart';

class CustomLoginShapeClipper1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height / 2);

    var firstEndpoint = Offset(size.width, size.height / 4);
    var firstControlPoint = Offset(size.width / 2, (size.height / 2) * 1.1);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);


    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}


class CustomLoginShapeClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.8);


    var firstEndpoint = Offset(size.width, size.height * 0.7);
    var firstControlPoint = Offset(size.width * 0.70, size.height * 0.8);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);


    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}


class CustomSignUpShapeClipper1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.30);

    var firstEndpoint = Offset(size.width, size.height * 0.15);
    var firstControlPoint = Offset(size.width * 0.5, size.height * 0.13);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);


    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomSignUpShapeClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
//    path.lineTo(0.0, size.height * 0.30);
    path.lineTo(0.0, size.height);

    var firstEndpoint = Offset(size.width, size.height * 0.6);
    var firstControlPoint = Offset(size.width * 0.25, size.height * 0.55);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);


    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomSignUpShapeClipper3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();

    path.lineTo(0.0, size.height * 0.8);


    var firstEndpoint = Offset(size.width, size.height * 0.7);
    var firstControlPoint = Offset(size.width * 0.70, size.height * 0.8);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);


    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}