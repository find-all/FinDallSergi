import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

/// [Separator] is a separator line
///
/// [ligthColor] is the color of the line in light mode
///  By default is [Colors.grey]
///
/// [darkColor] is the color of the line in dark mode
/// By default is [Colors.grey]
///
/// [height] is the height of the line
/// By default is [1]
///
class Separator extends StatelessWidget {
  final Color ligthColor;

  final Color darkColor;

  final double height;

  const Separator({
    super.key,
    this.ligthColor = Colors.grey,
    this.darkColor = Colors.grey,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: context.isDark ? darkColor : ligthColor,
    );
  }
}

/// [SeparatorWithText] is a separator line with text
///
/// [ligthColor] is the color of the line in light mode
/// By default is [Colors.grey]
///
/// [darkColor] is the color of the line in dark mode
/// By default is [Colors.grey]
///
/// [height] is the height of the line
/// By default is [1]
///
/// [text] is the text to be displayed
///
class SeparatorWithText extends StatelessWidget {
  final Color ligthColor;

  final Color darkColor;

  final double height;

  final Text text;

  const SeparatorWithText({
    super.key,
    this.ligthColor = Colors.grey,
    this.darkColor = Colors.grey,
    this.height = 1,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Separator(
            ligthColor: ligthColor,
            darkColor: darkColor,
            height: height,
          ),
        ),
        const SizedBox(width: 10),
        text,
        const SizedBox(width: 10),
        Expanded(
          child: Separator(
            ligthColor: ligthColor,
            darkColor: darkColor,
            height: height,
          ),
        ),
      ],
    );
  }
}
