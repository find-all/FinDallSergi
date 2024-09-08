import 'package:cached_network_image/cached_network_image.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

/// Widget to show a custom image
///
/// This widget applies [ScreenUtil] to the width and height and radius
///
/// [image] is a [String] that contains the url of the image
///
/// [width] is a [double] that contains the width of the image
///
/// [height] is a [double] that contains the height of the image
///
/// [errorWidget] is a [Widget] that contains the widget to show when the image fails to load
///
/// [radius] is a [double] that contains the radius of the image. Default is 10
///
/// If [image] is null or empty, shows a [Container] with the color of the surface
///
class CustomImage extends StatelessWidget {
  final String? image;

  final double width;

  final double height;

  final Widget? errorWidget;

  final Widget? emptyWidget;

  final double radius;

  final BoxFit fit;

  const CustomImage({
    super.key,
    this.image,
    required this.width,
    required this.height,
    this.errorWidget,
    this.emptyWidget,
    this.radius = 10,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (image == null || image!.isEmpty) {
      return emptyWidget ??
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: context.theme.colorScheme.surface,
            ),
          );
    }

    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: image!,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
        ),
      ),
      placeholder: (context, url) => ShimmerBox(
        width: width,
        height: height,
        radius: radius == 0 ? 1 : radius,
      ),
      errorWidget: (context, url, error) {
        return errorWidget ??
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                color: context.theme.colorScheme.surface,
              ),
              child: Icon(
                Icons.error,
                color: context.theme.colorScheme.error,
              ),
            );
      },
    );
  }
}

class CustomCircleImage extends StatelessWidget {
  final String? image;

  final double radius;

  final IconData? emptyIcon;

  const CustomCircleImage({
    super.key,
    this.image,
    this.radius = 20,
    this.emptyIcon,
  });

  @override
  Widget build(BuildContext context) {
    final emptyWidget = CircleAvatar(
      radius: radius,
      child: Center(
        child: Icon(
          emptyIcon ?? Icons.image,
          color: context.theme.colorScheme.primary,
        ),
      ),
    );

    if (image == null || image!.isEmpty) {
      return emptyWidget;
    }

    return CachedNetworkImage(
      imageUrl: image!,
      width: radius * 2,
      height: radius * 2,
      fadeInCurve: Curves.easeIn,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        width: radius * 2,
        height: radius * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => ShimmerCircle(
        radius: radius,
      ),
      errorWidget: (context, url, error) {
        return emptyWidget;
      },
    );
  }
}
