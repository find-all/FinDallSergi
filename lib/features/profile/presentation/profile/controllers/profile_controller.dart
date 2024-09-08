import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  @override
  ControllerState<Profile> build() {
    getProfile();
    return const ControllerStateInitial();
  }

  Future<void> getProfile() async {
    state = const ControllerStateLoading();

    final repository = ref.read(profileRepositoryProvider);

    final result = await repository.getProfile();

    result.when(
      success: (profile) {
        state = ControllerStateData(profile);
      },
      error: (e) {
        state = ControllerStateError(e);
      },
    );
  }

  void updateProfile(Profile profile) {
    state = ControllerStateData(profile);
  }
}
