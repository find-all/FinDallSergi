import 'package:cached_network_image/cached_network_image.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

/// [Avatar] is a widget that displays an image or an icon inside a circle.
///
/// It has the following properties:
///
///   - [radius] is the radius of the circle.
///
///   - [imageUrl] is the url of the image to be displayed.
///
///   - [backgroundColor] is the color of the circle.
///
///   - [iconColor] is the color of the icon.
///
///   - [iconSize] is the size of the icon.
///
///   - [icon] is the icon to be displayed.
///
class Avatar extends StatelessWidget {
  final double? radius;

  final String? imageUrl;

  final Color? backgroundColor;

  final Color? iconColor;

  final double? iconSize;

  final IconData? icon;

  const Avatar({
    super.key,
    this.radius,
    this.imageUrl,
    this.backgroundColor,
    this.iconColor,
    this.iconSize,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final currentRadius = radius ?? 25;

    final emptyWidget = CircleAvatar(
      radius: currentRadius,
      backgroundColor:
          backgroundColor ?? context.theme.colorScheme.onPrimaryContainer,
      child: Icon(
        icon ?? Icons.person,
        color: iconColor ?? context.theme.colorScheme.primaryContainer,
        size: iconSize ?? currentRadius * 0.7,
      ),
    );

    if (imageUrl == null) {
      return emptyWidget;
    }

    return CachedNetworkImage(
      imageUrl: imageUrl!,
      imageBuilder: (context, imageProvider) => Container(
        width: currentRadius * 2,
        height: currentRadius * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => ShimmerCircle(
        radius: currentRadius,
      ),
      errorWidget: (context, url, error) {
        return emptyWidget;
      },
    );
  }
}
