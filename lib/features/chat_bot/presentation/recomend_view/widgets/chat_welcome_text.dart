import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ChatWelcomeText extends StatelessWidget {
  const ChatWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: const ChatWelcomeTextBase(
        fontSizeTitle: 30,
        fontSizeSubtitle: 16,
        padding: EdgeInsets.all(5.0),
        showSubtitle: true,
      ),
      medium: const ChatWelcomeTextBase(
        fontSizeTitle: 24,
        fontSizeSubtitle: 0, // No se muestra el subtítulo
        padding: EdgeInsets.all(16.0),
        showSubtitle: false,
      ),
      defaultWidget: const ChatWelcomeTextBase(
        fontSizeTitle: 28,
        fontSizeSubtitle: 0, // No se muestra el subtítulo
        padding: EdgeInsets.all(20.0),
        showSubtitle: false,
      ),
    );
  }
}

class ChatWelcomeTextBase extends StatelessWidget {
  final double fontSizeTitle;
  final double fontSizeSubtitle;
  final EdgeInsets padding;
  final bool showSubtitle;

  const ChatWelcomeTextBase({
    super.key,
    required this.fontSizeTitle,
    required this.fontSizeSubtitle,
    required this.padding,
    required this.showSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '¡Bienvenido de nuevo!',
            style: TextStyle(fontSize: fontSizeTitle, fontWeight: FontWeight.bold),
          ),
          if (showSubtitle) ...[
            const SizedBox(height: 8),
            Text(
              '¿Qué te parece si te das un pequeño gusto hoy? En Gelato II tienen sabores deliciosos esperándote. ¿Te animas a probar uno? 🍨',
              style: TextStyle(fontSize: fontSizeSubtitle),
            ),
          ],
        ],
      ),
    );
  }
}
