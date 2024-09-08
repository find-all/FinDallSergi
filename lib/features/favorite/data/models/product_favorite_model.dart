// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_favorite_model.freezed.dart';
part 'product_favorite_model.g.dart';

@freezed
class ProductFavoriteModel with _$ProductFavoriteModel {
  const factory ProductFavoriteModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'images') @Default([]) List<String> images,
  }) = _ProductFavoriteModel;
  factory ProductFavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$ProductFavoriteModelFromJson(json);
}
