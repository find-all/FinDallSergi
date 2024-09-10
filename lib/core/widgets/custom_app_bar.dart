import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  /// The title of the app bar
  final String title;

  /// The function to call when the back button is pressed
  final void Function()? onBack;

  /// The widget to show on the right side of the app bar
  final Widget? trailing;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.primary,
      child: Container(
        height: 80, // Ajusta la altura del AppBar
        padding: const EdgeInsets.symmetric(horizontal: 10), // Mantén el padding horizontal
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Centra verticalmente
          children: [
            if (onBack != null) ...[
              IconButton(
                onPressed: onBack,
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: context.theme.colorScheme.onPrimary,
                ),
              ),
              const SizedBox(width: 30), // Espacio de 30 píxeles entre el ícono y el título
            ],
            // El texto está alineado verticalmente
            Text(
              title,
              style: context.textTheme.titleLarge?.copyWith(
                color: context.theme.colorScheme.onPrimary,
              ),
            ),
            const Spacer(), // Empuja el contenido a la derecha
            trailing ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
