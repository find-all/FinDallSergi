import 'package:fin_dall/core/widgets/chat_initial_header.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat/controllers/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';

class ChatMessagesView extends ConsumerWidget {
  const ChatMessagesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Observamos el estado del chat que incluye la lista de mensajes como ChatMessage
    final chatState = ref.watch(chatStateProvider);

    return context.getResponsiveWidget(
      compact:
          _buildMobileLayout(context, chatState.messages), // Vista para móviles
      defaultWidget: _buildTabletLayout(
          context, chatState.messages), // Vista para tabletas
    );
  }

  // Layout para Móviles
  Widget _buildMobileLayout(BuildContext context, List<ChatMessage> messages) {
    return Scaffold(
      appBar: const ChatInitialHeader(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: messages
                  .map((message) => message.toWidget())
                  .toList(), // Convertimos ChatMessage a Widget
            ),
          ),
        ],
      ),
    );
  }

  // Layout para Tabletas
  Widget _buildTabletLayout(BuildContext context, List<ChatMessage> messages) {
    return Scaffold(
      appBar: const ChatInitialHeader(),
      body: Row(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: messages
                  .map((message) => message.toWidget())
                  .toList(), // Convertimos ChatMessage a Widget
            ),
          ),
        ],
      ),
    );
  }
}
