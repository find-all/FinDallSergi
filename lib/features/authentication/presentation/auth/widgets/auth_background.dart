import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/logo_image.dart';
import 'package:fin_dall/features/app_language/presentation/widgets/app_language_selector.dart';
import 'package:fin_dall/features/app_theme/presentation/widgets/app_theme_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

enum AuthBackgroundType {
  compact,
  extended,
}

class AuthBackground extends StatelessWidget {
  final AuthBackgroundType _type;
  final Widget child;
  const AuthBackground.compact({
    super.key,
    required this.child,
  }) : _type = AuthBackgroundType.compact;

  const AuthBackground.extended({
    super.key,
    required this.child,
  }) : _type = AuthBackgroundType.extended;

  // Builds a [ClipPath] with a custom clipper.
  //
  // The [context] and [clipper] arguments must not be null.
  // The [width] and [height] arguments are optional and default to the width and height of the context if not provided.
  ClipPath _buildClipPath({
    required BuildContext context,
    required CustomClipper<Path> clipper,
    double? width,
    double? height,
  }) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        color: context.theme.colorScheme.primary,
        height: height ?? context.height,
        width: width ?? context.width,
      ),
    );
  }

  // Builds a [Positioned] widget that fills its parent and contains the [child] widget.
  //
  // The [context] and [child] arguments must not be null.
  Positioned _buildContent({
    required BuildContext context,
    required Widget child,
  }) {
    return Positioned.fill(
      child: SafeArea(
        child: SizedBox(
          width: context.width,
          height: context.height,
          child: child,
        ),
      ),
    );
  }

  // Builds a [Container] that serves as the background of the sign-in page.
  //
  // The [context] and [children] arguments must not be null.
  Container _buildBackground(
      {required BuildContext context, required List<Widget> children}) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      width: context.width,
      height: context.height,
      child: Stack(
        children: children
          ..add(
            _buildContent(
              context: context,
              child: child,
            ),
          ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case AuthBackgroundType.compact:
        return Stack(
          children: [
            Positioned.fill(
              child: SafeArea(
                child: SizedBox(
                  width: context.width,
                  height: context.height,
                  child: child,
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: ClipPath(
                clipper: WaveClipperTwo(flip: true),
                child: Container(
                  height: context.height * 0.15,
                  width: context.width,
                  color: context.colorScheme.primary,
                  child: Material(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        const Spacer(),
                        AppThemeSelector(
                          color: context.colorScheme.onPrimary,
                        ),
                        const SizedBox(width: 10),
                        AppLanguageSelector(
                          color: context.colorScheme.onPrimary,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: WaveClipperOne(
                  reverse: true,
                ),
                child: Container(
                  height: context.height * 0.1,
                  width: context.width,
                  color: context.colorScheme.primary,
                ),
              ),
            ),
          ],
        );
      case AuthBackgroundType.extended:
        return Stack(
          children: [
            Positioned.fill(
              child: SizedBox(
                width: context.width,
                height: context.height,
                child: child,
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                height: context.height,
                width: context.width * 0.3,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          LogoImage(
                            logoColor: LogoColor.white,
                            width: context.width * 0.2,
                            height: context.height * 0.2,
                            fit: BoxFit.scaleDown,
                          ).animate(
                            effects: [
                              const ScaleEffect(
                                begin: Offset(0.5, 0.5),
                                end: Offset(1, 1),
                                duration: Duration(milliseconds: 150),
                                curve: Curves.easeInOut,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              AppThemeSelector(
                                color: context.colorScheme.onPrimary,
                              ),
                              const SizedBox(width: 10),
                              AppLanguageSelector(
                                color: context.colorScheme.onPrimary,
                              ),
                              const Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
    }
  }
}
