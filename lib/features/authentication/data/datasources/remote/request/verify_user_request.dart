// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user_request.freezed.dart';
part 'verify_user_request.g.dart';

@freezed
class VerifyUserRequest with _$VerifyUserRequest {
  const factory VerifyUserRequest({
    @JsonKey(includeToJson: false) required String verifyUserToken,
    required String code,
    @JsonKey(name: '_scenario') @Default('enable') String scenario,
  }) = _VerifyUserRequest;

  factory VerifyUserRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyUserRequestFromJson(json);
}
