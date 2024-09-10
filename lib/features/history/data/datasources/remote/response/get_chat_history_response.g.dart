// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_chat_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetChatHistoryResponseImpl _$$GetChatHistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetChatHistoryResponseImpl(
      currentPage: (json['current_page'] as num).toInt(),
      totalPage: (json['last_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => ChatHistoryEntryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetChatHistoryResponseImplToJson(
        _$GetChatHistoryResponseImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.totalPage,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
