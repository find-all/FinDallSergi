// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/features/favorite/data/models/favorite_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_favorites_response.freezed.dart';
part 'get_favorites_response.g.dart';

@freezed
class GetFavoritesResponse with _$GetFavoritesResponse {
  const factory GetFavoritesResponse({
    required List<FavoriteModel> favorites,
  }) = _GetFavoritesResponse;
  factory GetFavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFavoritesResponseFromJson(json);
}
