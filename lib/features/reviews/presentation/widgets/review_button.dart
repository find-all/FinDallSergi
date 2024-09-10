import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ReviewButton extends StatelessWidget {
  final String text;

  final void Function()? onPressed;

  const ReviewButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonTheme(
        data: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              context.colorScheme.primary.withOpacity(0.8),
            ),
            foregroundColor: WidgetStateProperty.all<Color>(
              context.colorScheme.onPrimary,
            ),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
          ),
        ));
  }
}
