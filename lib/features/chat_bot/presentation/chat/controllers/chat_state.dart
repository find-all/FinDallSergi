// chat_state.dart
import 'package:fin_dall/features/chat_bot/data/repositories/chat_repository_impl.dart';
import 'package:fin_dall/features/chat_bot/domain/response_handler/response_handler.dart';
import 'package:fin_dall/features/chat_bot/domain/response_handler/response_handler_factory.dart';
import 'package:fin_dall/features/chat_bot/domain/use_cases/send_message_to_ai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fin_dall/features/chat_bot/presentation/chat_messages_view/widgets/custom_chat_bubble.dart';
import 'dart:convert';

import 'package:flutter_riverpod/legacy.dart';

// Enumeración para los estados de vista del chat
enum ChatViewState {
  initial, // Vista inicial con botones y galería
  chat, // Vista de chat con mensajes
}

// Clase base para los mensajes en el chat
abstract class ChatMessage {
  Widget toWidget();
}

// Mensaje con un widget personalizado
class WidgetMessage implements ChatMessage {
  final Widget widget;

  WidgetMessage(this.widget);

  @override
  Widget toWidget() => widget;
}

// Estado del chat incluyendo mensajes y visibilidad del input
class ChatState {
  final List<ChatMessage> messages;
  final bool isInputVisible;
  final ChatViewState viewState;

  ChatState({
    this.messages = const [],
    this.isInputVisible = true,
    this.viewState = ChatViewState.initial,
  });

  ChatState copyWith({
    List<ChatMessage>? messages,
    bool? isInputVisible,
    ChatViewState? viewState,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isInputVisible: isInputVisible ?? this.isInputVisible,
      viewState: viewState ?? this.viewState,
    );
  }
}

// Notificador de estado del chat que maneja los cambios
class ChatStateNotifier extends StateNotifier<ChatState> {
  final SendMessageToAi sendMessageUseCase;
  final ResponseHandlerFactory responseHandlerFactory;

  // Constructor del Notificador de estado del chat
  ChatStateNotifier(this.sendMessageUseCase)
      : responseHandlerFactory = ResponseHandlerFactory(),
        super(ChatState());

  // Método para cambiar la vista al estado de chat
  void switchToChat() {
    state = state.copyWith(viewState: ChatViewState.chat);
  }

  // Método para cambiar la vista al estado inicial
  void switchToInitial() {
    state = state.copyWith(viewState: ChatViewState.initial);
  }

  // Método para enviar el mensaje del usuario y manejar la respuesta de la API
  Future<void> sendMessage(String message) async {
    // Añade el mensaje del usuario al estado antes de la simulación de respuesta de la IA
    var updatedMessages = List<ChatMessage>.from(state.messages)
      ..add(WidgetMessage(CustomChatBubble(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        isSentByUser: true,
      ))); // Mensaje del usuario

    // Actualiza el estado para mostrar el mensaje del usuario
    state = state.copyWith(
      messages: updatedMessages,
      isInputVisible: true,
    );

    try {
      // Llamamos al caso de uso para obtener la respuesta de la API (simulación)
      String apiResponse = await sendMessageUseCase.execute(message);

      // Simulamos que la respuesta es un JSON
      Map<String, dynamic> data = json.decode(apiResponse);
      int responseType = data['type'] ?? 0;

      // Usamos la fábrica de manejadores de respuestas para obtener el manejador correcto
      ResponseHandler handler = responseHandlerFactory.getHandler(responseType);

      // Parseamos la respuesta y creamos el widget correspondiente
      WidgetMessage widgetMessage = handler.handle(apiResponse);

      // Añadimos el widget generado al estado
      updatedMessages = List<ChatMessage>.from(state.messages)
        ..add(widgetMessage);
      state = state.copyWith(messages: updatedMessages);
    } catch (error) {
      // En caso de error, añadimos un mensaje de error al estado
      updatedMessages = List<ChatMessage>.from(state.messages)
        ..add(WidgetMessage(
          CustomChatBubble(
            content: Text(
              'Error al procesar el mensaje',
              style: const TextStyle(color: Colors.red),
            ),
            isSentByUser: false,
          ),
        ));
      state = state.copyWith(messages: updatedMessages);
    }
  }
}

// Proveedor del repositorio
final chatRepositoryProvider = Provider<ChatRepositoryImpl>((ref) {
  return ChatRepositoryImpl();
});

// Proveedor del caso de uso `SendMessageToAi`
final sendMessageUseCaseProvider = Provider<SendMessageToAi>((ref) {
  final chatRepository = ref.watch(chatRepositoryProvider);
  return SendMessageToAi(chatRepository);
});

// Proveedor de estado de Riverpod para el chat
final chatStateProvider =
    StateNotifierProvider<ChatStateNotifier, ChatState>((ref) {
  final sendMessageUseCase =
      ref.watch(sendMessageUseCaseProvider); // Inyectamos el caso de uso
  return ChatStateNotifier(sendMessageUseCase);
});
