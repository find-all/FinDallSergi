// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_entry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatHistoryEntryModelImpl _$$ChatHistoryEntryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatHistoryEntryModelImpl(
      id: json['id'] as String,
      message: json['message'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ChatHistoryEntryModelImplToJson(
        _$ChatHistoryEntryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
