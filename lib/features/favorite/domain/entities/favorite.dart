// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';

@freezed
class Favorite with _$Favorite {
  const factory Favorite.business({
    required String id,
    required String name,
    required String description,
    required String type,
    String? imageUrl,
  }) = FavoriteBusiness;
  const factory Favorite.product({
    required String id,
    required String businessId,
    required String businessName,
    required String name,
    required String description,
    required String type,
    String? imageUrl,
  }) = FavoriteProduct;

  const factory Favorite.service({
    required String id,
    required String businessId,
    required String businessName,
    required String name,
    required String description,
    required String type,
    String? imageUrl,
  }) = FavoriteService;
}
