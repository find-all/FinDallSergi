// ignore_for_file: invalid_annotation_target

import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:fin_dall/features/authentication/domain/entities/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_controller.g.dart';

sealed class SignInState {
  const SignInState();
}

final class SignInStateInitial extends SignInState {
  const SignInStateInitial();
}

final class SignInStateLoading extends SignInState {
  const SignInStateLoading();
}

final class SignInStateData extends SignInState {
  final User user;

  const SignInStateData(this.user);
}

final class SignInStateUnverifiedData extends SignInState {
  final User user;

  final String token;

  const SignInStateUnverifiedData(this.user, this.token);
}

final class SignInStateError extends SignInState {
  final Failure error;

  const SignInStateError(this.error);
}

@riverpod
class SignInController extends _$SignInController {
  @override
  SignInState build() {
    return const SignInStateInitial();
  }

  Future<void> signIn({required String email, required String password}) async {
    state = const SignInStateLoading();

    final repository = ref.read(authenticationRepositoryProvider);

    final response = await repository.signIn(email: email, password: password);

    response.when(
      success: (data) async {
        if (data.isEmailVerified) {
          state = SignInStateData(data);
        } else {
          final sendEmailVerificationEmailResult =
              await repository.sendEmailVerificationEmail();

          sendEmailVerificationEmailResult.when(
            success: (token) {
              state = SignInStateUnverifiedData(data, token);
            },
            error: (error) {
              state = SignInStateError(error);
            },
          );
        }
      },
      error: (error) {
        state = SignInStateError(error);
      },
    );
  }
}
