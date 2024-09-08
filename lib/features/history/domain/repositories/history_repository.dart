import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/history/domain/entities/chat_history_entry.dart';
import 'package:fin_dall/features/history/domain/entities/search_history_entry.dart';

abstract class HistoryRepository {
  /// Get search history
  ///
  /// Return a list of search history entries
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<List<SearchHistoryEntry>>> getSearchHistory({
    int page = 1,
    int limit = 15,
  });

  /// Get chart history
  ///
  /// Return a list of chart history entries
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<List<ChatHistoryEntry>>> getChatHistory({
    int page = 1,
    int limit = 15,
  });

  /// Remove entry from search history
  ///
  /// Remove the entry with the given [id] from the search history
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<SearchHistoryEntry>> removeSearchHistoryEntry({
    required String id,
  });

  /// Remove entry from chart history
  ///
  /// Remove the entry with the given [id] from the chart history
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<ChatHistoryEntry>> removeChatHistoryEntry({
    required String id,
  });

  /// Clear search history
  ///
  /// Clear all entries from the search history
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<void>> clearSearchHistory();

  /// Clear chart history
  ///
  /// Clear all entries from the chart history
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<void>> clearChatHistory();
}
