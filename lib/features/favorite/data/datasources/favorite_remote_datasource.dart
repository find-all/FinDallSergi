import 'package:fin_dall/core/clients/http_client/api_client.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/favorite/data/datasources/request/add_favorite_request.dart';
import 'package:fin_dall/features/favorite/data/datasources/request/get_favorites_request.dart';
import 'package:fin_dall/features/favorite/data/datasources/request/remove_favorite_request.dart';
import 'package:fin_dall/features/favorite/data/datasources/response/get_favorites_response.dart';
import 'package:fin_dall/features/favorite/data/models/favorite_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_remote_datasource.g.dart';

abstract class FavoriteRemoteDatasource {
  /// Get favorites
  ///
  /// Return a list of favorites model for the user with the given [params]
  ///
  Future<Result<GetFavoritesResponse>> getFavorites({
    required GetFavoritesRequest params,
  });

  /// Add favorite
  ///
  /// Add a favorite for the user with the given [params]
  ///
  /// Return a favorite model
  ///
  Future<Result<FavoriteModel>> addFavorite({
    required AddFavoriteRequest params,
  });

  /// Remove favorite
  ///
  /// Remove a favorite for the user with the given [params]
  ///
  /// Return a favorite model
  ///
  Future<Result<FavoriteModel>> removeFavorite({
    required RemoveFavoriteRequest params,
  });
}

class FavoriteRemoteDatasourceImpl implements FavoriteRemoteDatasource {
  final ApiClient _apiClient;

  FavoriteRemoteDatasourceImpl({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  Future<Result<GetFavoritesResponse>> getFavorites(
      {required GetFavoritesRequest params}) {
    // TODO: implement getFavorites
    throw UnimplementedError();
  }

  @override
  Future<Result<FavoriteModel>> addFavorite(
      {required AddFavoriteRequest params}) {
    // TODO: implement addFavorite
    throw UnimplementedError();
  }

  @override
  Future<Result<FavoriteModel>> removeFavorite(
      {required RemoveFavoriteRequest params}) {
    // TODO: implement removeFavorite
    throw UnimplementedError();
  }
}

@riverpod
FavoriteRemoteDatasource favoriteRemoteDatasource(
    FavoriteRemoteDatasourceRef ref) {
  final apiClient = ref.watch(apiClientProvider);

  return FavoriteRemoteDatasourceImpl(
    apiClient: apiClient,
  );
}
