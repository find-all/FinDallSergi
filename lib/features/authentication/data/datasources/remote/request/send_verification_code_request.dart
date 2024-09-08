// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_verification_code_request.freezed.dart';
part 'send_verification_code_request.g.dart';

@freezed
class SendVerificationCodeRequest with _$SendVerificationCodeRequest {
  const factory SendVerificationCodeRequest({
    required String email,
    @JsonKey(name: '_scenario') @Default('resend') String scenario,
  }) = _SendVerificationCodeRequest;
  factory SendVerificationCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationCodeRequestFromJson(json);
}
