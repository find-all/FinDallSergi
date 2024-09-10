// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request.freezed.dart';
part 'reset_password_request.g.dart';

@freezed
class ResetPasswordRequest with _$ResetPasswordRequest {
  const factory ResetPasswordRequest({
    required String password,
    @JsonKey(name: 'confirm_password') required String confirmPassword,
    required String code,
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: '_scenario') @Default('reset_password') String scenario,
  }) = _ResetPasswordRequest;
  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);
}
