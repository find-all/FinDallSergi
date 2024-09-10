// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String name,
    String? photoUrl,
    required bool isEmailVerified,
  }) = _User;
}
