// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendVerificationCodeRequestImpl _$$SendVerificationCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendVerificationCodeRequestImpl(
      email: json['email'] as String,
      scenario: json['_scenario'] as String? ?? 'resend',
    );

Map<String, dynamic> _$$SendVerificationCodeRequestImplToJson(
        _$SendVerificationCodeRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      '_scenario': instance.scenario,
    };
