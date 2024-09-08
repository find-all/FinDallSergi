// ignore_for_file: invalid_annotation_target
import 'package:fin_dall/core/widgets/code_input.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verify_account_form_controller.freezed.dart';
part 'verify_account_form_controller.g.dart';

@freezed
class VerifyAccountFormState with _$VerifyAccountFormState {
  const factory VerifyAccountFormState({
    @Default(Code.pure()) Code code,
    required String token,
    @Default(false) bool isValid,
  }) = _VerifyAccountFormState;
}

@riverpod
class VerifyAccountFormController extends _$VerifyAccountFormController {
  @override
  VerifyAccountFormState build({required String token}) {
    return VerifyAccountFormState(token: token);
  }

  void codeChanged(String code) {
    final newCode = Code.dirty(code);
    final isValid = Formz.validate([newCode]);
    state = state.copyWith(
      code: newCode,
      isValid: isValid,
    );
  }

  void onTokenChanged(String token) {
    state = state.copyWith(token: token);
  }

  void resetForm() {
    state = VerifyAccountFormState(token: token);
  }
}
