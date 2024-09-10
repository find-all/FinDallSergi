import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:fin_dall/features/authentication/domain/entities/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'check_local_auth_controller.g.dart';

sealed class CheckLocalAuthControllerState {
  const CheckLocalAuthControllerState();
}

final class CheckLocalAuthControllerStateInitial
    extends CheckLocalAuthControllerState {
  const CheckLocalAuthControllerStateInitial();
}

final class CheckLocalAuthControllerStateLoading
    extends CheckLocalAuthControllerState {
  const CheckLocalAuthControllerStateLoading();
}

final class CheckLocalAuthControllerStateData
    extends CheckLocalAuthControllerState {
  final User user;

  const CheckLocalAuthControllerStateData(this.user);
}

final class CheckLocalAuthControllerStateUnverifyData
    extends CheckLocalAuthControllerState {
  final User user;

  final String token;

  const CheckLocalAuthControllerStateUnverifyData(this.user, this.token);
}

final class CheckLocalAuthControllerStateError
    extends CheckLocalAuthControllerState {
  final Failure failure;

  const CheckLocalAuthControllerStateError(this.failure);
}

@riverpod
class CheckLocalAuthController extends _$CheckLocalAuthController {
  @override
  CheckLocalAuthControllerState build() {
    checkLocalAuth();
    return const CheckLocalAuthControllerStateInitial();
  }

  Future<void> checkLocalAuth() async {
    state = const CheckLocalAuthControllerStateLoading();
    final repository = ref.read(authenticationRepositoryProvider);

    final result = await repository.getUser();

    result.when(
      success: (user) async {
        if (user.isEmailVerified) {
          state = CheckLocalAuthControllerStateData(user);
        } else {
          final sendVerificationResult =
              await repository.sendEmailVerificationEmail();

          sendVerificationResult.when(
            success: (token) {
              state = CheckLocalAuthControllerStateUnverifyData(user, token);
            },
            error: (failure) {
              state = CheckLocalAuthControllerStateError(failure);
            },
          );
        }
      },
      error: (failure) {
        state = CheckLocalAuthControllerStateError(failure);
      },
    );
  }
}
