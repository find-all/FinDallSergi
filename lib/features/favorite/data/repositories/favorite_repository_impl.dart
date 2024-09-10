import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/error/json_serialization_failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/authentication/data/datasources/local/authentication_local_datasource.dart';
import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:fin_dall/features/favorite/data/datasources/favorite_remote_datasource.dart';
import 'package:fin_dall/features/favorite/domain/entities/favorite.dart';
import 'package:fin_dall/features/favorite/domain/repositories/favorite_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_repository_impl.g.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteRemoteDatasource _favoriteRemoteDatasource;
  final StorageClient<UserModel> _authenticationLocalDatasource;
  FavoriteRepositoryImpl({
    required FavoriteRemoteDatasource favoriteRemoteDatasource,
    required StorageClient<UserModel> authenticationLocalDatasource,
  })  : _favoriteRemoteDatasource = favoriteRemoteDatasource,
        _authenticationLocalDatasource = authenticationLocalDatasource;

  @override
  Future<Result<Favorite>> addFavorite({required String id}) async {
    await Future.delayed(const Duration(seconds: 1));

    return Result.success(
      Favorite.business(
        id: id,
        name: 'ejemplo de business',
        description: 'description de business',
        imageUrl: 'https://via.placeholder.com/150',
        type: 'Restaurant',
      ),
    );
  }

  @override
  Future<Result<List<Favorite>>> getFavorites() async {
    await Future.delayed(const Duration(seconds: 1));

    final favorites = [
      const Favorite.business(
        id: '1',
        name: 'ejemplo de business',
        description: 'description de business',
        imageUrl: 'https://via.placeholder.com/150',
        type: 'Restaurant',
      ),
      const Favorite.product(
        id: '2',
        name: 'ejemplo de product',
        description: 'description de service',
        imageUrl: 'https://via.placeholder.com/150',
        type: 'Herramientas',
        businessId: '1',
        businessName: 'ejemplo de business',
      ),
      const Favorite.service(
        id: '3',
        name: 'ejemplo de service',
        description: 'description de service',
        imageUrl: 'https://via.placeholder.com/150',
        type: 'Plomeria',
        businessId: '1',
        businessName: 'ejemplo de business',
      ),
    ];

    return Result.success(favorites);
  }

  @override
  Future<Result<Favorite>> removeFavorite({required String id}) async {
    await Future.delayed(const Duration(seconds: 1));

    return Result.error(
        ToJsonFailure(error: 'error', stackTrace: StackTrace.current));

    return Result.success(
      Favorite.business(
        id: id,
        name: 'ejemplo de business',
        description: 'description de business',
        imageUrl: 'https://via.placeholder.com/150',
        type: 'Restaurant',
      ),
    );
  }
}

@riverpod
FavoriteRepository favoriteRepository(FavoriteRepositoryRef ref) {
  final authenticationLocalDatasource =
      ref.watch(authenticationLocalDatasourceProvider);
  final favoriteRemoteDatasource = ref.watch(favoriteRemoteDatasourceProvider);

  return FavoriteRepositoryImpl(
    favoriteRemoteDatasource: favoriteRemoteDatasource,
    authenticationLocalDatasource: authenticationLocalDatasource,
  );
}
