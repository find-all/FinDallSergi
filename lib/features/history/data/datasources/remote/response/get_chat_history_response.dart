// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/features/history/data/models/chat_history_entry_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_chat_history_response.freezed.dart';
part 'get_chat_history_response.g.dart';

@freezed
class GetChatHistoryResponse with _$GetChatHistoryResponse {
  const factory GetChatHistoryResponse({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int totalPage,
    @JsonKey(name: 'data') required List<ChatHistoryEntryModel> data,
  }) = _GetChatHistoryResponse;
  factory GetChatHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetChatHistoryResponseFromJson(json);
}
