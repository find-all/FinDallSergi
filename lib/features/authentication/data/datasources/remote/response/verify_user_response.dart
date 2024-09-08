// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user_response.freezed.dart';
part 'verify_user_response.g.dart';

@freezed
class VerifyUserResponse with _$VerifyUserResponse {
  const factory VerifyUserResponse({
    required String token,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'user') required UserModel user,
  }) = _VerifyUserResponse;
  factory VerifyUserResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyUserResponseFromJson(json);
}
