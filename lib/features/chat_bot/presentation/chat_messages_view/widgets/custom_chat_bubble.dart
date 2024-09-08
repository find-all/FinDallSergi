import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class Message {
  final Widget content;  // Ahora en lugar de texto, aceptamos cualquier widget
  final bool isSentByUser;

  Message({required this.content, required this.isSentByUser});
}

class CustomChatBubble extends StatelessWidget {
  final List<Message> messages;

  const CustomChatBubble({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: CustomChatBubbleBase(
        messages: messages,
        bubbleMaxWidthFactor: 0.7,
        fontSize: 14.0,
        avatarRadius: 20.0,
        padding: const EdgeInsets.all(10.0),
      ),
      medium: CustomChatBubbleBase(
        messages: messages,
        bubbleMaxWidthFactor: 0.6,
        fontSize: 16.0,
        avatarRadius: 25.0,
        padding: const EdgeInsets.all(15.0),
      ),
      defaultWidget: CustomChatBubbleBase(
        messages: messages,
        bubbleMaxWidthFactor: 0.5,
        fontSize: 18.0,
        avatarRadius: 30.0,
        padding: const EdgeInsets.all(20.0),
      ),
    );
  }
}

class CustomChatBubbleBase extends StatelessWidget {
  final List<Message> messages;
  final double bubbleMaxWidthFactor;
  final double fontSize;
  final double avatarRadius;
  final EdgeInsets padding;

  const CustomChatBubbleBase({
    super.key,
    required this.messages,
    required this.bubbleMaxWidthFactor,
    required this.fontSize,
    required this.avatarRadius,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: padding,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,  // Aseguramos que la imagen esté al fondo
              mainAxisAlignment: message.isSentByUser
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                if (!message.isSentByUser)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      radius: avatarRadius,
                      backgroundImage: const NetworkImage(
                        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', // URL simulada para la imagen del receptor
                      ),
                    ),
                  ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * bubbleMaxWidthFactor,
                  ),
                  decoration: BoxDecoration(
                    color: message.isSentByUser ? Colors.blue : Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                      bottomLeft: message.isSentByUser
                          ? const Radius.circular(20)
                          : const Radius.circular(0),
                      bottomRight: message.isSentByUser
                          ? const Radius.circular(0)
                          : const Radius.circular(20),
                    ),
                  ),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: fontSize, color: message.isSentByUser ? Colors.white : Colors.black),
                    child: message.content, // Aquí añadimos el contenido recibido como Widget
                  ),
                ),
                if (message.isSentByUser)
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
            // Añadir separación entre los mensajes
            const SizedBox(height: 10.0),
          ],
        );
      },
    );
  }
}
