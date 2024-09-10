// domain/repositories/chat_repository.dart
import 'package:fin_dall/features/chat_bot/presentation/chat/controllers/chat_state.dart';

abstract class ChatRepository {
  Future<ChatMessage> sendMessageToAI(String userMessage);
}
