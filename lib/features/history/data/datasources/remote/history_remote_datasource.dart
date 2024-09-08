import 'package:fin_dall/core/clients/http_client/api_client.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/history/data/datasources/remote/request/get_chat_history_request.dart';
import 'package:fin_dall/features/history/data/datasources/remote/request/get_search_history_request.dart';
import 'package:fin_dall/features/history/data/datasources/remote/response/get_chat_history_response.dart';
import 'package:fin_dall/features/history/data/datasources/remote/response/get_search_history_response.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_remote_datasource.g.dart';

abstract class HistoryRemoteDatasource {
  /// Get search history
  ///
  /// Return a list of search history model for the user with the given [request]
  ///
  /// Return a GetSearchHistoryResponse with a list of search history model
  ///
  Future<Result<GetSearchHistoryResponse>> getSearchHistory({
    required GetSearchHistoryRequest request,
  });

  /// Remove search history entry
  ///
  /// Remove a search history entry for the user with the given [id]
  ///
  /// Return a search history model
  ///
  Future<Result<void>> removeSearchHistoryEntry({
    required String id,
  });

  /// Clear search history
  ///
  /// Clear all search history for the user
  ///
  /// Return void
  ///
  Future<Result<void>> clearSearchHistory();

  /// Get chat history
  ///
  /// Return a list of chat history model for the user with the given [request]
  ///
  /// Return a GetChatHistoryResponse with a list of chat history model
  ///
  Future<Result<GetChatHistoryResponse>> getChatHistory(
      {required GetChatHistoryRequest request});

  /// Remove chat history entry
  ///
  /// Remove a chat history entry for the user with the given [id]
  ///
  /// Return a chat history model
  ///
  Future<Result<void>> removeChatHistoryEntry({
    required String id,
  });
}

class HistoryRemoteDatasourceImpl implements HistoryRemoteDatasource {
  final ApiClient _apiClient;

  HistoryRemoteDatasourceImpl({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  Future<Result<void>> clearSearchHistory() {
    // TODO: implement clearSearchHistory
    throw UnimplementedError();
  }

  @override
  Future<Result<GetChatHistoryResponse>> getChatHistory(
      {required GetChatHistoryRequest request}) {
    // TODO: implement getChatHistory
    throw UnimplementedError();
  }

  @override
  Future<Result<GetSearchHistoryResponse>> getSearchHistory(
      {required GetSearchHistoryRequest request}) {
    // TODO: implement getSearchHistory
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> removeChatHistoryEntry({required String id}) {
    // TODO: implement removeChatHistoryEntry
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> removeSearchHistoryEntry({required String id}) {
    // TODO: implement removeSearchHistoryEntry
    throw UnimplementedError();
  }
}

@riverpod
HistoryRemoteDatasource historyRemoteDatasource(
    HistoryRemoteDatasourceRef ref) {
  final apiClient = ref.watch(apiClientProvider);
  return HistoryRemoteDatasourceImpl(
    apiClient: apiClient,
  );
}
