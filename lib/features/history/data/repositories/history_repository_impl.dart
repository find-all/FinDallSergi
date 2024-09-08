import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/authentication/data/datasources/local/authentication_local_datasource.dart';
import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:fin_dall/features/history/data/datasources/remote/history_remote_datasource.dart';
import 'package:fin_dall/features/history/domain/entities/chat_history_entry.dart';
import 'package:fin_dall/features/history/domain/entities/search_history_entry.dart';
import 'package:fin_dall/features/history/domain/repositories/history_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_repository_impl.g.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final HistoryRemoteDatasource _remoteDatasource;

  final StorageClient<UserModel> _authenticationLocalDatasource;

  const HistoryRepositoryImpl({
    required HistoryRemoteDatasource remoteDatasource,
    required StorageClient<UserModel> authenticationLocalDatasource,
  })  : _remoteDatasource = remoteDatasource,
        _authenticationLocalDatasource = authenticationLocalDatasource;

  @override
  Future<Result<void>> clearChatHistory() async {
    final user = await _authenticationLocalDatasource.read();

    if (user.isError) {
      return Result.error(user.getErrorOrThrow());
    }

    await Future.delayed(const Duration(seconds: 2));

    return Result.success(null);
  }

  @override
  Future<Result<void>> clearSearchHistory() async {
    final user = await _authenticationLocalDatasource.read();

    if (user.isError) {
      return Result.error(user.getErrorOrThrow());
    }

    await Future.delayed(const Duration(seconds: 2));

    return Result.success(null);
  }

  @override
  Future<Result<List<ChatHistoryEntry>>> getChatHistory({
    int page = 1,
    int limit = 15,
  }) async {
    final user = await _authenticationLocalDatasource.read();

    if (user.isError) {
      return Result.error(user.getErrorOrThrow());
    }

    final userId = user.getOrThrow().id;

    await Future.delayed(const Duration(seconds: 2));

    return Result.success([
      ChatHistoryEntry(
        id: '1',
        message: 'Hello world',
        timestamp: DateTime.now(),
      ),
      ChatHistoryEntry(
        id: '2',
        message: 'Hello world',
        timestamp: DateTime.now(),
      ),
      ChatHistoryEntry(
        id: '3',
        message: 'Hello world',
        timestamp: DateTime.now(),
      ),
      ChatHistoryEntry(
        id: '4',
        message: 'Hello world',
        timestamp: DateTime.now(),
      ),
    ]);
  }

  @override
  Future<Result<List<SearchHistoryEntry>>> getSearchHistory({
    int page = 1,
    int limit = 15,
  }) async {
    final user = await _authenticationLocalDatasource.read();

    if (user.isError) {
      return Result.error(user.getErrorOrThrow());
    }

    final userId = user.getOrThrow().id;

    await Future.delayed(const Duration(seconds: 1));

    final items = <SearchHistoryEntry>[];

    // Generar 100 componentes más
    for (int i = 0; i <= 103; i++) {
      final entry = SearchHistoryEntry.product(
        id: '$i',
        productId: '$i',
        timestamp: DateTime.now(),
        name: 'Generated $i',
        description: 'Generated description for $i',
        type: 'product',
        businessId: 'business$i', // Solo para product y service
        businessName: 'business$i', // Solo para product y service
        imageUrl: 'https://via.placeholder.com/150',
      );

      items.add(entry);
    }

    final pageItems = items.skip((page - 1) * limit).take(limit).toList();
    return Result.success(pageItems);
  }

  @override
  Future<Result<ChatHistoryEntry>> removeChatHistoryEntry(
      {required String id}) async {
    final user = await _authenticationLocalDatasource.read();

    if (user.isError) {
      return Result.error(user.getErrorOrThrow());
    }

    await Future.delayed(const Duration(seconds: 2));

    return Result.success(
      ChatHistoryEntry(
        id: '1',
        message: 'Hello world',
        timestamp: DateTime.now(),
      ),
    );
  }

  @override
  Future<Result<SearchHistoryEntry>> removeSearchHistoryEntry(
      {required String id}) async {
    final user = await _authenticationLocalDatasource.read();

    if (user.isError) {
      return Result.error(user.getErrorOrThrow());
    }

    await Future.delayed(const Duration(seconds: 2));

    return Result.success(
      SearchHistoryEntry.product(
        id: '1',
        timestamp: DateTime.now(),
        name: 'Hello world',
        productId: '1',
        description: 'Hello world',
        type: 'product',
        businessId: '1',
        businessName: 'Hello world',
        imageUrl: 'https://via.placeholder.com/150',
      ),
    );
  }
}

@riverpod
HistoryRepository historyRepository(HistoryRepositoryRef ref) {
  final remoteDatasource = ref.watch(historyRemoteDatasourceProvider);
  final authenticationLocalDatasource =
      ref.watch(authenticationLocalDatasourceProvider);

  return HistoryRepositoryImpl(
    remoteDatasource: remoteDatasource,
    authenticationLocalDatasource: authenticationLocalDatasource,
  );
}
