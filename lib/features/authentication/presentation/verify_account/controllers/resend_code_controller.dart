import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resend_code_controller.g.dart';

@riverpod
class ResendCodeController extends _$ResendCodeController {
  @override
  ControllerState<String> build() {
    return const ControllerStateInitial<String>();
  }

  Future<void> resendCode() async {
    state = const ControllerStateLoading<String>();

    final repository = ref.read(authenticationRepositoryProvider);

    final result = await repository.sendEmailVerificationEmail();

    result.when(
      success: (value) {
        state = ControllerStateData<String>(value);
      },
      error: (error) {
        state = ControllerStateError<String>(error);
      },
    );
  }
}
