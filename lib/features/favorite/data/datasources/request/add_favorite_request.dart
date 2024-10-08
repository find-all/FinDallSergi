// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_favorite_request.freezed.dart';
part 'add_favorite_request.g.dart';

@freezed
class AddFavoriteRequest with _$AddFavoriteRequest {
  const factory AddFavoriteRequest({
    required int userId,
    required String id,
  }) = _AddFavoriteRequest;

  factory AddFavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteRequestFromJson(json);
}
