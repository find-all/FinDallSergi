import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class OverlayLoader extends StatelessWidget {
  const OverlayLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;

    return ColoredBox(
      color: Colors.black.withOpacity(0.4),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isDark
                  ? CustomTheme.primaryDarkColor
                  : CustomTheme.primaryLightColor,
            ),
            child: Center(
              child: LoadingAnimationWidget.inkDrop(
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
