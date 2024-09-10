// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_search_history_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSearchHistoryRequestImpl _$$GetSearchHistoryRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSearchHistoryRequestImpl(
      userId: (json['userId'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 25,
    );

Map<String, dynamic> _$$GetSearchHistoryRequestImplToJson(
        _$GetSearchHistoryRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'page': instance.page,
      'pageSize': instance.pageSize,
    };
