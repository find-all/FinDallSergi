// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_favorites_request.freezed.dart';
part 'get_favorites_request.g.dart';

@freezed
class GetFavoritesRequest with _$GetFavoritesRequest {
  const factory GetFavoritesRequest({
    required int userId,
  }) = _GetFavoritesRequest;
  factory GetFavoritesRequest.fromJson(Map<String, dynamic> json) =>
      _$GetFavoritesRequestFromJson(json);
}
