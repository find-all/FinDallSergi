// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_password_reset_email_response.freezed.dart';
part 'send_password_reset_email_response.g.dart';

@freezed
class SendPasswordResetEmailResponse with _$SendPasswordResetEmailResponse {
  const factory SendPasswordResetEmailResponse({
    @JsonKey(name: 'token_id') required String token,
  }) = _SendPasswordResetEmailResponse;
  factory SendPasswordResetEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$SendPasswordResetEmailResponseFromJson(json);
}
