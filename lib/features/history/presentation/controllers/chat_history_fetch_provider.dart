import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/history/data/repositories/history_repository_impl.dart';
import 'package:fin_dall/features/history/domain/entities/chat_history_entry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_history_fetch_provider.g.dart';

@riverpod
Future<Result<List<ChatHistoryEntry>>> Function(int page, int pageSize)
    chatHistoryFetch(ChatHistoryFetchRef ref) {
  final repository = ref.watch(historyRepositoryProvider);
  return (page, size) => repository.getChatHistory(page: page, limit: size);
}
