// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_favorite_request.freezed.dart';
part 'remove_favorite_request.g.dart';

@freezed
class RemoveFavoriteRequest with _$RemoveFavoriteRequest {
  const factory RemoveFavoriteRequest({
    required int userId,
    required String id,
  }) = _RemoveFavoriteRequest;
  factory RemoveFavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveFavoriteRequestFromJson(json);
}
