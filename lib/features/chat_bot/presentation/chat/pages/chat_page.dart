import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/input_chat_speech_to_text.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat/controllers/chat_state.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/pages/chat_messages_view.dart';
import 'package:fin_dall/features/chat_bot/presentation/recomend_view/pages/chat_initial_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatState =
        ref.watch(chatStateProvider); // Observa el estado del chat

    return context.getResponsiveWidget(
      compact: ChatCompactPage(chatState: chatState), // Adaptar para móviles
      defaultWidget:
          ChatExtendPage(chatState: chatState), // Adaptar para tabletas
    );
  }
}

class ChatCompactPage extends ConsumerWidget {
  final ChatState chatState; // Recibe el estado completo del chat

  const ChatCompactPage({super.key, required this.chatState});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: _buildCurrentView(
                chatState.viewState), // Construye la vista basada en el estado
          ),
          if (chatState.isInputVisible) // Controla la visibilidad del input
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextInputWithVoice(
                isLoading: false,
                onSend: (text) {
                  ref
                      .read(chatStateProvider.notifier)
                      .sendMessage(text); // Envía mensaje
                },
                onTap: () {
                  ref
                      .read(chatStateProvider.notifier)
                      .switchToChat(); // Cambia al estado de chat
                },
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCurrentView(ChatViewState state) {
    switch (state) {
      case ChatViewState.initial:
        return const ChatInitialView(); // Vista inicial
      case ChatViewState.chat:
        return const ChatMessagesView(); // Vista de mensajes
      default:
        return const ChatInitialView(); // Vista por defecto
    }
  }
}

class ChatExtendPage extends ConsumerWidget {
  final ChatState chatState; // Recibe el estado completo del chat

  const ChatExtendPage({super.key, required this.chatState});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Extendido'),
      ),
      body: Column(
        children: [
          const Text('Chat Header (Extendido)'),
          SizedBox(height: context.height * 0.1),
          Expanded(
            child: _buildCurrentView(chatState.viewState),
          ),
          if (chatState.isInputVisible) // Controla la visibilidad del input
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextInputWithVoice(
                isLoading: false,
                onSend: (text) {
                  ref
                      .read(chatStateProvider.notifier)
                      .sendMessage(text); // Envía mensaje
                },
                onTap: () {
                  ref
                      .read(chatStateProvider.notifier)
                      .switchToChat(); // Cambia al estado de chat
                },
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCurrentView(ChatViewState state) {
    switch (state) {
      case ChatViewState.initial:
        return const ChatInitialView();
      case ChatViewState.chat:
        return const ChatMessagesView();
      default:
        return const ChatInitialView();
    }
  }
}
