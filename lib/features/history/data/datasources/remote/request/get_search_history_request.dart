// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_search_history_request.freezed.dart';
part 'get_search_history_request.g.dart';

@freezed
class GetSearchHistoryRequest with _$GetSearchHistoryRequest {
  const factory GetSearchHistoryRequest({
    required int userId,
    required int page,
    @Default(25) int pageSize,
  }) = _GetSearchHistoryRequest;
  factory GetSearchHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$GetSearchHistoryRequestFromJson(json);
}
