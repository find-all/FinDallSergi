// domain/use_cases/send_message_to_ai.dart
import 'package:fin_dall/features/chat_bot/data/repositories/chat_repository_impl.dart';

class SendMessageToAi {
  final ChatRepositoryImpl repository;

  SendMessageToAi(this.repository);

  Future<String> execute(String message) async {
    return await repository.postMessage(message);
  }
}
