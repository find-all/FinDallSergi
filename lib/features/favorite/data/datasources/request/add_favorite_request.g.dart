// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favorite_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddFavoriteRequestImpl _$$AddFavoriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddFavoriteRequestImpl(
      userId: (json['userId'] as num).toInt(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$AddFavoriteRequestImplToJson(
        _$AddFavoriteRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
    };
