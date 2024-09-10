import 'package:fin_dall/core/utils/constants.dart';
import 'package:flutter/material.dart';

enum LogoColor { blue, white, black }

/// Logo Image
///
/// Image widget for logo image
class LogoImage extends StatelessWidget {
  /// Height
  ///
  /// The height of the image
  ///
  final double height;

  /// Width
  ///
  /// The width of the image
  ///
  final double width;

  /// Fit
  ///
  /// The fit of the image
  ///
  /// Default value is [BoxFit.cover]
  final BoxFit fit;

  /// Logo color
  ///
  final LogoColor? logoColor;

  const LogoImage({
    super.key,
    required this.height,
    required this.width,
    this.fit = BoxFit.cover,
    this.logoColor,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoColor != null
          ? switch (logoColor!) {
              LogoColor.blue => Assets.logoBlue,
              LogoColor.white => Assets.logoWhite,
              LogoColor.black => Assets.logoBlack,
            }
          : Assets.logoWhite,
      height: height,
      width: width,
      fit: fit,
    );
  }
}
