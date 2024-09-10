// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_history_entry.freezed.dart';

@freezed
class SearchHistoryEntry with _$SearchHistoryEntry {
  const factory SearchHistoryEntry.product({
    required String id,
    required DateTime timestamp,
    required String productId,
    required String name,
    required String description,
    required String type,
    required String businessId,
    required String businessName,
    String? imageUrl,
  }) = SearchHistoryEntryProduct;

  const factory SearchHistoryEntry.service({
    required String id,
    required DateTime timestamp,
    required String serviceId,
    required String name,
    required String description,
    required String type,
    required String businessId,
    required String businessName,
    String? imageUrl,
  }) = SearchHistoryEntryService;

  const factory SearchHistoryEntry.business({
    required String id,
    required DateTime timestamp,
    required String businessId,
    required String name,
    required String description,
    required String type,
    String? imageUrl,
  }) = SearchHistoryEntryBusiness;
}
