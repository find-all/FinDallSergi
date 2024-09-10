// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_history_entry.freezed.dart';

@freezed
class ChatHistoryEntry with _$ChatHistoryEntry {
  const factory ChatHistoryEntry({
    required String id,
    required String message,
    required DateTime timestamp,
  }) = _ChatHistoryEntry;
}
