// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_business_model.freezed.dart';
part 'product_business_model.g.dart';

@freezed
class ProductBusinessModel with _$ProductBusinessModel {
  const factory ProductBusinessModel({
    @JsonKey(name: '_id') required String id,
  }) = _ProductBusinessModel;
  factory ProductBusinessModel.fromJson(Map<String, dynamic> json) =>
      _$ProductBusinessModelFromJson(json);
}
