// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyUserResponseImpl _$$VerifyUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyUserResponseImpl(
      token: json['token'] as String,
      refreshToken: json['refresh_token'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyUserResponseImplToJson(
        _$VerifyUserResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refreshToken,
      'user': instance.user.toJson(),
    };
