// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_favorite_model.freezed.dart';
part 'service_favorite_model.g.dart';

@freezed
class ServiceFavoriteModel with _$ServiceFavoriteModel {
  const factory ServiceFavoriteModel({
    @JsonKey(name: 'uuid') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'type') required String type,
  }) = _ServiceFavoriteModel;
  factory ServiceFavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceFavoriteModelFromJson(json);
}
