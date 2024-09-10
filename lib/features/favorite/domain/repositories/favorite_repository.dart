import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/favorite/domain/entities/favorite.dart';

abstract class FavoriteRepository {
  /// Get favorites
  ///
  /// Return a list of favorites for the user
  ///
  Future<Result<List<Favorite>>> getFavorites();

  /// Add favorite
  ///
  /// Add a favorite for the user with the given [id]
  ///
  /// [id] is the id of the favorite
  ///
  Future<Result<Favorite>> addFavorite({
    required String id,
  });

  /// Remove favorite
  ///
  /// Remove a favorite for the user with the given [id]
  ///
  /// [id] is the id of the favorite
  ///
  Future<Result<Favorite>> removeFavorite({
    required String id,
  });
}
