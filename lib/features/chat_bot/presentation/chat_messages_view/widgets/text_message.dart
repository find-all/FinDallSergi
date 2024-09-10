import 'package:flutter/material.dart';
import 'package:fin_dall/core/extensions/context_extension.dart'; // Para la extensión de responsividad

class TextMessage extends StatelessWidget {
  final String text;

  const TextMessage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: TextMessageBase(
        text: text,
        fontSize: 14.0, // Tamaño de fuente más pequeño para pantallas compactas
        padding: const EdgeInsets.all(8.0),
      ),
      medium: TextMessageBase(
        text: text,
        fontSize: 16.0, // Tamaño de fuente mediano
        padding: const EdgeInsets.all(12.0),
      ),
      defaultWidget: TextMessageBase(
        text: text,
        fontSize: 18.0, // Tamaño de fuente más grande para pantallas grandes
        padding: const EdgeInsets.all(16.0),
      ),
    );
  }
}

class TextMessageBase extends StatelessWidget {
  final String text;
  final double fontSize;
  final EdgeInsets padding;

  const TextMessageBase({
    super.key,
    required this.text,
    required this.fontSize,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize, // Tamaño de la fuente dinámico
        ),
      ),
    );
  }
}
