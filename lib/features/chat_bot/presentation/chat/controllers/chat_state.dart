
// Definir los estados posibles del chat
import 'package:flutter_riverpod/legacy.dart';

enum ChatViewState {
  initial, // Vista inicial con botones y galería
  chat,    // Vista de chat con mensajes
}

// StateNotifier para gestionar los diferentes estados del chat
class ChatStateNotifier extends StateNotifier<ChatViewState> {
  ChatStateNotifier() : super(ChatViewState.initial);

  // Cambiar a la vista de chat
  void switchToChat() {
    state = ChatViewState.chat;
  }

  // Cambiar a la vista inicial
  void switchToInitial() {
    state = ChatViewState.initial;
  }
}

// Proveedor de estado para gestionar el estado del chat
final chatStateProvider = StateNotifierProvider<ChatStateNotifier, ChatViewState>((ref) {
  return ChatStateNotifier();
});
