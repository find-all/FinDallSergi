// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_search_history_response.freezed.dart';
part 'get_search_history_response.g.dart';

@freezed
class GetSearchHistoryResponse with _$GetSearchHistoryResponse {
  const factory GetSearchHistoryResponse({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int totalPage,

    // TODO replace search model
    @JsonKey(name: 'data') required List<dynamic> data,
  }) = _GetSearchHistoryResponse;
  factory GetSearchHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSearchHistoryResponseFromJson(json);
}
