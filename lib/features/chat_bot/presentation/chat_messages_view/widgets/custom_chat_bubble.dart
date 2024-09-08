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
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,  // Imagen alineada al final (abajo)
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', // URL simulada para la imagen del receptor
                          ),
                        ),
                      ),
                    ],
                  ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7),
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
                  child: message.content, // Aquí añadimos el contenido recibido como Widget
                ),
                if (message.isSentByUser)
                 const Column(
                    mainAxisAlignment: MainAxisAlignment.end,  // Imagen alineada al final (abajo)
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', // URL simulada para la imagen del usuario
                          ),
                        ),
                      ),
                    ],
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
