// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyUserRequestImpl _$$VerifyUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyUserRequestImpl(
      verifyUserToken: json['verifyUserToken'] as String,
      code: json['code'] as String,
      scenario: json['_scenario'] as String? ?? 'enable',
    );

Map<String, dynamic> _$$VerifyUserRequestImplToJson(
        _$VerifyUserRequestImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      '_scenario': instance.scenario,
    };
