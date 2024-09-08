import 'package:flutter/material.dart';

/// [AuthMobilePortaitTopClip] is a custom clipper for creating a unique shape in the top part of the sign-in form in mobile portrait mode.
/// It uses quadratic bezier curves to create a smooth, curved shape.
///
/// Example:
/// ```dart
/// ClipPath(
///   clipper: SignInMobilePortaitTopClip(),
///   child: Container(
///     color: Colors.blue,
///   ),
/// )
/// ```
class AuthMobilePortaitTopClip extends CustomClipper<Path> {
  AuthMobilePortaitTopClip();

  @override
  Path getClip(Size size) {
    final double sw = size.width;
    final double sh = size.height;

    final Path path = Path()
      ..lineTo(0, size.height * .075)
      ..quadraticBezierTo(
        sw * .25,
        sh * .1,
        sw * .55,
        sh * .065,
      )
      ..quadraticBezierTo(
        sw * .9,
        sh * .035,
        sw,
        sh * .5,
      )
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/// [AuthMobilePortraitBottomClip] is a custom clipper for creating a unique shape in the bottom part of the sign-in form in mobile portrait mode.
/// It uses quadratic bezier curves to create a smooth, curved shape.
///
/// Example:
/// ```dart
/// ClipPath(
///   clipper: SignInMobilePortraitBottomClip(),
///   child: Container(
///     color: Colors.blue,
///   ),
/// )
/// ```
class AuthMobilePortraitBottomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset firstEndPoint = Offset(size.width * .5, 20);
    Offset firstControlPoint = Offset(size.width * .25, 30);
    Offset secondEndPoint = Offset(size.width, 50);
    Offset secondControlPoint = Offset(size.width * .75, 10);

    final path = Path()
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy)
      ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/// [AuthMobileLandScapeLeftClip] is a custom clipper for creating a unique shape in the left part of the sign-in form in mobile landscape mode.
/// It uses quadratic bezier curves to create a smooth, curved shape.
///
/// Example:
/// ```dart
/// ClipPath(
///   clipper: SignInMobileLandScapeLeftClip(),
///   child: Container(
///     color: Colors.blue,
///   ),
/// )
/// ```
class AuthMobileLandScapeLeftClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(0, sh / 2); // Start from the bottom left corner
    path.quadraticBezierTo(
        sw / 5, sh / 2, sw / 5, 0); // Draw a curve from bottom to up
    path.lineTo(0, 0);

    path.close(); // Go back to the bottom left corner

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/// [AuthMobileLandScapeRightClip] is a custom clipper for creating a unique shape in the right part of the sign-in form in mobile landscape mode.
/// It uses an oval shape to create a unique design.
///
/// Example:
/// ```dart
/// ClipPath(
///   clipper: SignInMobileLandScapeRightClip(),
///   child: Container(
///     color: Colors.blue,
///   ),
/// )
/// ```
class AuthMobileLandScapeRightClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(sw, sh);

    path.addOval(
      Rect.fromCircle(
        center: Offset(sw, sh),
        radius: sw / 5,
      ),
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/// [AuthTabletPortraitTopClip] is a custom clipper for creating a unique shape in the top part of the sign-in form in tablet portrait mode.
/// It uses quadratic bezier curves to create a smooth, curved shape.
///
/// Example:
/// ```dart
/// ClipPath(
///   clipper: SignInTabletPortraitTopClip(),
///   child: Container(
///     color: Colors.blue,
///   ),
/// )
/// ```
class AuthTabletPortraitTopClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(0, 0);
    path.lineTo(0, sh * 0.2);

    path.quadraticBezierTo(
      sw / 5,
      sh * 0.25,
      sw / 2,
      sh * 0.1,
    );

    path.lineTo(sw / 2, sh * 0.1);

    path.quadraticBezierTo(
      sw * 0.65,
      sh * 0.05,
      sw * 0.8,
      sh * 0.1,
    );

    path.lineTo(sw * 0.8, sh * 0.1);

    path.quadraticBezierTo(
      sw,
      sh * 0.15,
      sw,
      sh * 0.1,
    );

    path.lineTo(sw, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/// [AuthTabletPortraitBottomClip] is a custom clipper for creating a unique shape in the bottom part of the sign-in form in tablet portrait mode.
/// It uses an oval shape to create a unique design.
///
/// Example:
/// ```dart
/// ClipPath(
///   clipper: SignInTabletPortraitBottomClip(),
///   child: Container(
///     color: Colors.blue,
///   ),
/// )
/// ```
class AuthTabletPortraitBottomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(sw / 2, sh);

    path.addOval(
      Rect.fromCenter(
        center: Offset(sw / 2, sh),
        width: sw,
        height: sh / 5,
      ),
    );

    path.lineTo(sw, sh);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

/// [AuthTabletLandScapeLeftClip] is a custom clipper for creating a unique shape in the left part of the sign-in form in tablet landscape mode.
/// It uses quadratic bezier curves to create a smooth, curved shape.
///
/// Example:
/// ```dart
/// ClipPath(
///   clipper: SignInTabletLandScapeLeftClip(),
///   child: Container(
///     color: Colors.blue,
///   ),
/// )
/// ```
class AuthTabletLandScapeLeftClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(0, sh);
    path.lineTo(sw / 4, sh);
    path.quadraticBezierTo(sw / 3, sh, sw / 2, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
