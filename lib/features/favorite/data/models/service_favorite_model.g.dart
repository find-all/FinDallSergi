// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceFavoriteModelImpl _$$ServiceFavoriteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceFavoriteModelImpl(
      id: json['uuid'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ServiceFavoriteModelImplToJson(
        _$ServiceFavoriteModelImpl instance) =>
    <String, dynamic>{
      'uuid': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
    };
