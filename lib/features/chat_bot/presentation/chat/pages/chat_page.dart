import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/input_chat_speech_to_text.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat/controllers/chat_state.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/pages/chat_messages_view.dart';
import 'package:fin_dall/features/chat_bot/presentation/recomend_view/pages/chat_initial_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Para el gestor de estado

@RoutePage()
class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatState = ref.watch(chatStateProvider); // Obtenemos el estado del chat

    // Usamos getResponsiveWidget para decidir si mostrar vista compacta o extendida
    return context.getResponsiveWidget(
      compact: ChatCompactPage(chatState: chatState), // Vista para móviles
      defaultWidget: ChatExtendPage(chatState: chatState), // Vista para tabletas
    );
  }
}

class ChatCompactPage extends ConsumerWidget {
  final ChatViewState chatState; // Recibe el estado del chat

  const ChatCompactPage({super.key, required this.chatState});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: _buildCurrentView(chatState), // Vista principal del chat
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: TextInputWithVoice(
              isLoading: false,
              onSend: (text) {
                print("Mensaje enviado: $text");
              },
              onTap: () {
                // Acción personalizada al hacer clic en el campo de texto
                ref.read(chatStateProvider.notifier).switchToChat();
              },
            ),
          ),
        ],
      ),
    );
  }

  // Construir la vista en función del estado actual del chat
  Widget _buildCurrentView(ChatViewState state) {
    switch (state) {
      case ChatViewState.initial:
        return const ChatInitialView(); // Vista inicial
      case ChatViewState.chat:
        return const ChatMessagesView(); // Vista de mensajes del chat
      default:
        return const ChatInitialView(); // Vista por defecto
    }
  }
}

class ChatExtendPage extends StatelessWidget {
  final ChatViewState chatState; // Recibe el estado del chat

  const ChatExtendPage({super.key, required this.chatState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Extendido'),
      ),
      body: Column(
        children: [
          const Text('Chat Header (Extendido)'), // Encabezado del chat
          SizedBox(height: context.height * 0.1),
          Expanded(
            child: _buildCurrentView(chatState), // Mostrar vista en función del estado
          ),
        ],
      ),
    );
  }

  // Construir la vista en función del estado actual del chat
  Widget _buildCurrentView(ChatViewState state) {
    switch (state) {
      case ChatViewState.initial:
        return const ChatInitialView(); // Vista inicial
      case ChatViewState.chat:
        return const ChatMessagesView(); // Vista de mensajes del chat
      default:
        return const ChatInitialView(); // Vista por defecto
    }
  }
}
