import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/history/data/repositories/history_repository_impl.dart';
import 'package:fin_dall/features/history/domain/entities/search_history_entry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_history_fetch_provider.g.dart';

@riverpod
Future<Result<List<SearchHistoryEntry>>> Function(int page, int pageSize)
    searchHistoryFetch(SearchHistoryFetchRef ref) {
  final repository = ref.watch(historyRepositoryProvider);
  return (page, size) => repository.getSearchHistory(page: page, limit: size);
}
