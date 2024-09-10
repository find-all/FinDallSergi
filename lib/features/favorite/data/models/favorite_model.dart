// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/features/favorite/data/models/product_business_model.dart';
import 'package:fin_dall/features/favorite/data/models/product_favorite_model.dart';
import 'package:fin_dall/features/favorite/data/models/service_favorite_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
class FavoriteModel with _$FavoriteModel {
  const factory FavoriteModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'product') ProductFavoriteModel? product,
    @JsonKey(name: 'service') ServiceFavoriteModel? service,
    @JsonKey(name: 'business') ProductBusinessModel? business,
  }) = _FavoriteModel;
  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}
