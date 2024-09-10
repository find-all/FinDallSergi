import 'package:flutter/material.dart';

class CustomChatBubble extends StatelessWidget {
  final Widget content; // El contenido que puede ser cualquier widget
  final bool isSentByUser; // Para controlar la alineación y el color
  final double bubbleMaxWidthFactor;
  final double fontSize;
  final double avatarRadius;
  final EdgeInsets padding;

  const CustomChatBubble({
    super.key,
    required this.content,
    required this.isSentByUser,
    this.bubbleMaxWidthFactor =
        0.7, // Tamaño máximo de la burbuja basado en el ancho de la pantalla
    this.fontSize = 16.0,
    this.avatarRadius = 20.0,
    this.padding = const EdgeInsets.all(10.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.end, // Alineación de la imagen con el texto
        mainAxisAlignment:
            isSentByUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          // Imagen del receptor si no es enviado por el usuario
          if (!isSentByUser)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundImage: const NetworkImage(
                  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', // URL simulada para la imagen del receptor
                ),
              ),
            ),
          // Burbuja del mensaje
          Container(
            padding: const EdgeInsets.all(12.0),
            constraints: BoxConstraints(
              maxWidth:
                  MediaQuery.of(context).size.width * bubbleMaxWidthFactor,
            ),
            decoration: BoxDecoration(
              color: isSentByUser
                  ? Colors.blue
                  : const Color.fromARGB(255, 178, 174, 174),
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
                bottomLeft: isSentByUser
                    ? const Radius.circular(20)
                    : const Radius.circular(0),
                bottomRight: isSentByUser
                    ? const Radius.circular(0)
                    : const Radius.circular(20),
              ),
            ),
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: fontSize,
                color: isSentByUser ? Colors.white : Colors.black,
              ),
              child:
                  content, // El contenido, que puede ser texto o cualquier widget
            ),
          ),
          // Imagen del usuario si es enviado por el usuario
          if (isSentByUser)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundImage: const NetworkImage(
                  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', // URL simulada para la imagen del usuario
                ),
              ),
            ),
        ],
      ),
    );
  }
}
