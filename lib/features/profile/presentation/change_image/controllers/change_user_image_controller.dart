import 'dart:io';

import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_user_image_controller.g.dart';

@riverpod
class ChangeUserImageController extends _$ChangeUserImageController {
  @override
  ControllerState<Profile> build() {
    return const ControllerStateInitial();
  }

  Future<void> changeUserImage({
    required File image,
  }) async {
    state = const ControllerStateLoading();

    final repository = ref.read(profileRepositoryProvider);

    final result = await repository.updateImage(
      image: image,
    );

    result.when(
      success: (profile) {
        state = ControllerStateData(profile);
      },
      error: (e) {
        state = ControllerStateError(e);
      },
    );
  }
}
