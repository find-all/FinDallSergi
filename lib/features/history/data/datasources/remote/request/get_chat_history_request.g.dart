// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_chat_history_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetChatHistoryRequestImpl _$$GetChatHistoryRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetChatHistoryRequestImpl(
      userId: (json['userId'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 25,
    );

Map<String, dynamic> _$$GetChatHistoryRequestImplToJson(
        _$GetChatHistoryRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'page': instance.page,
      'pageSize': instance.pageSize,
    };
