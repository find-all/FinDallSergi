import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// Shimmer Box
///
/// A box with a shimmer effect
///
/// [width] The width of the box. This widget applies the screen util to the width
///
/// [height] The height of the box. This widget applies the screen util to the height
///
/// [radius] The radius of the box. This widget applies the screen util to the radius
///
/// Example:
///
///   ShimmerBox(
///     width: 100,
///     height: 100,
///     radius: 10,
///  );
///
/// [width], [height] and [radius] must be greater than 0
///
/// By default, the [radius] is 5
///
class ShimmerBox extends StatelessWidget {
  final double width;

  final double height;

  final double radius;

  final BorderRadius? borderRadius;

  const ShimmerBox({
    super.key,
    required this.width,
    required this.height,
    this.radius = 5,
    this.borderRadius,
  }) : assert(width > 0 && height > 0 && radius > 0);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.theme.colorScheme.primary.withOpacity(0.2),
      highlightColor: context.theme.colorScheme.primary.withOpacity(0.4),
      enabled: true,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadius ??
              BorderRadius.all(
                Radius.circular(radius == 5 ? 5 : radius),
              ),
          color: Colors.white,
        ),
      ),
    );
  }
}

class ShimmerCircle extends StatelessWidget {
  final double? radius;

  const ShimmerCircle({
    super.key,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.theme.colorScheme.primary.withOpacity(0.2),
      highlightColor: context.theme.colorScheme.primary.withOpacity(0.4),
      enabled: true,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.white,
      ),
    );
  }
}
