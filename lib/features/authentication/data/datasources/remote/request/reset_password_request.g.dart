// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordRequestImpl _$$ResetPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordRequestImpl(
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
      code: json['code'] as String,
      token: json['token'] as String,
      scenario: json['_scenario'] as String? ?? 'reset_password',
    );

Map<String, dynamic> _$$ResetPasswordRequestImplToJson(
        _$ResetPasswordRequestImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'code': instance.code,
      '_scenario': instance.scenario,
    };
