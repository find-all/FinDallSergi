import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;

  final String? imageUrl;

  final void Function()? onPressed;

  final bool _isIconButton;

  const CircleButton.icon({
    super.key,
    required this.icon,
    this.onPressed,
  })  : imageUrl = null,
        _isIconButton = true;

  const CircleButton.image(
      {super.key,
      this.onPressed,
      required IconData errorEmptyIcon,
      this.imageUrl})
      : icon = errorEmptyIcon,
        _isIconButton = false;

  Widget _buildIconButtonContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Icon(
        icon,
        size: 25,
        color: context.theme.colorScheme.primary,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      color: context.theme.colorScheme.onPrimary,
      child: InkWell(
        onTap: onPressed,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        highlightColor: context.theme.colorScheme.primary.withOpacity(0.3),
        child: _isIconButton
            ? _buildIconButtonContent(context)
            : CustomImage(
                width: 45,
                height: 45,
                radius: 50,
                image: imageUrl,
                emptyWidget: _buildIconButtonContent(context),
                errorWidget: _buildIconButtonContent(context),
              ),
      ),
    );
  }
}
