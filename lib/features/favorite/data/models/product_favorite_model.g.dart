// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductFavoriteModelImpl _$$ProductFavoriteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductFavoriteModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      brand: json['brand'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductFavoriteModelImplToJson(
        _$ProductFavoriteModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'brand': instance.brand,
      'images': instance.images,
    };
