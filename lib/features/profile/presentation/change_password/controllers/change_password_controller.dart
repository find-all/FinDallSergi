import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_controller.g.dart';

@riverpod
class ChangePasswordController extends _$ChangePasswordController {
  @override
  ControllerState<Profile> build() {
    return const ControllerStateInitial();
  }

  Future<void> changePassword({
    required String newPassword,
  }) async {
    state = const ControllerStateLoading();

    final repository = ref.read(profileRepositoryProvider);

    final result = await repository.changePassword(
      newPassword: newPassword,
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
