// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteModelImpl _$$FavoriteModelImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteModelImpl(
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      product: json['product'] == null
          ? null
          : ProductFavoriteModel.fromJson(
              json['product'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : ServiceFavoriteModel.fromJson(
              json['service'] as Map<String, dynamic>),
      business: json['business'] == null
          ? null
          : ProductBusinessModel.fromJson(
              json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavoriteModelImplToJson(_$FavoriteModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'product': instance.product?.toJson(),
      'service': instance.service?.toJson(),
      'business': instance.business?.toJson(),
    };
