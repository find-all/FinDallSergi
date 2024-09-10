// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_chat_history_request.freezed.dart';
part 'get_chat_history_request.g.dart';

@freezed
class GetChatHistoryRequest with _$GetChatHistoryRequest {
  const factory GetChatHistoryRequest({
    required int userId,
    required int page,
    @Default(25) int pageSize,
  }) = _GetChatHistoryRequest;
  factory GetChatHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$GetChatHistoryRequestFromJson(json);
}
