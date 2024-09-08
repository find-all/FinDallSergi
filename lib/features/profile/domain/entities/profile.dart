// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required int id,
    required String name,
    required String email,
    String? photoUrl,
  }) = _Profile;
}
