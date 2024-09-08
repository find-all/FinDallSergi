// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_verification_code_response.freezed.dart';
part 'send_verification_code_response.g.dart';

@freezed
class SendVerificationCodeResponse with _$SendVerificationCodeResponse {
  const factory SendVerificationCodeResponse({
    required String token,
  }) = _SendVerificationCodeResponse;

  factory SendVerificationCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationCodeResponseFromJson(json);
}
