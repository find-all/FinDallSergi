// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_search_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSearchHistoryResponseImpl _$$GetSearchHistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSearchHistoryResponseImpl(
      currentPage: (json['current_page'] as num).toInt(),
      totalPage: (json['last_page'] as num).toInt(),
      data: json['data'] as List<dynamic>,
    );

Map<String, dynamic> _$$GetSearchHistoryResponseImplToJson(
        _$GetSearchHistoryResponseImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.totalPage,
      'data': instance.data,
    };
