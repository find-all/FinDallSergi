// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_favorite_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveFavoriteRequestImpl _$$RemoveFavoriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveFavoriteRequestImpl(
      userId: (json['userId'] as num).toInt(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$RemoveFavoriteRequestImplToJson(
        _$RemoveFavoriteRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
    };
