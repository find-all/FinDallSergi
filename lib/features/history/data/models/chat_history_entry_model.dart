// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_history_entry_model.freezed.dart';
part 'chat_history_entry_model.g.dart';

@freezed
class ChatHistoryEntryModel with _$ChatHistoryEntryModel {
  const factory ChatHistoryEntryModel({
    required String id,
    required String message,
    required DateTime updatedAt,
  }) = _ChatHistoryEntryModel;
  factory ChatHistoryEntryModel.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryEntryModelFromJson(json);
}
