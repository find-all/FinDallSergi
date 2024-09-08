// ignore_for_file: invalid_annotation_target
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required int id,
    required String name,
    required String email,
    @JsonKey(name: 'user_image') String? photoUrl,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
  }) = _UserModel;

  bool get isEmailVerified => emailVerifiedAt != null;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
