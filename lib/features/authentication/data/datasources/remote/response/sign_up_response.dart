// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    @JsonKey(name: 'model') required UserModel user,
    @JsonKey(name: 'token') required String verifyUserToken,
  }) = _SignUpResponse;
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
