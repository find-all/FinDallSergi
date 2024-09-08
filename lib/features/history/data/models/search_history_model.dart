
/*
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_history_model.freezed.dart';
part 'search_history_model.g.dart';

@freezed
class SearchHistoryModel with _$SearchHistoryModel {
  const factory SearchHistoryModel.business({
    required String id,
    required DateTime updatedAt,
    required String businessId,
    required String name,
    required String description,
    required String type,
    String? imageUrl,
  }) = SearchHistoryModelBusiness;

  const factory SearchHistoryModel.product({
    required String id,
    required DateTime updatedAt,
    required String businessId,
    required String businessName,
    required String productId,
    required String name,
    required String description,
    required String type,
    String? imageUrl,
  }) = SearchHistoryModelProduct;

  const factory SearchHistoryModel.service({
    required String id,
    required DateTime updatedAt,
    required String businessId,
    required String businessName,
    required String serviceId,
    required String name,
    required String description,
    required String type,
    String? imageUrl,
  }) = SearchHistoryModelService;

  factory SearchHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryModelFromJson(json);
}
*/