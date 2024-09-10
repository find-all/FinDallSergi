// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_password_reset_email_request.freezed.dart';
part 'send_password_reset_email_request.g.dart';

@freezed
class SendPasswordResetEmailRequest with _$SendPasswordResetEmailRequest {
  const factory SendPasswordResetEmailRequest({
    required String email,
  }) = _SendPasswordResetEmailRequest;
  factory SendPasswordResetEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$SendPasswordResetEmailRequestFromJson(json);
}
