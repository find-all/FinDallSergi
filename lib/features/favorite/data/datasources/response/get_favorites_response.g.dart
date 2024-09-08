// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFavoritesResponseImpl _$$GetFavoritesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFavoritesResponseImpl(
      favorites: (json['favorites'] as List<dynamic>)
          .map((e) => FavoriteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetFavoritesResponseImplToJson(
        _$GetFavoritesResponseImpl instance) =>
    <String, dynamic>{
      'favorites': instance.favorites.map((e) => e.toJson()).toList(),
    };
