import 'package:fin_dall/core/widgets/new_name_input.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_name_form_controller.freezed.dart';
part 'change_name_form_controller.g.dart';

@freezed
class ChangeNameFormState with _$ChangeNameFormState {
  const factory ChangeNameFormState({
    required NewName name,
    @Default(false) bool isValid,
  }) = _ChangeNameFormState;
}

@riverpod
class ChangeNameFormController extends _$ChangeNameFormController {
  @override
  ChangeNameFormState build({required String currentName}) {
    return ChangeNameFormState(
      name: NewName.pure(currentName),
    );
  }

  void nameChanged(String name) {
    final newName = NewName.dirty(currentName, name);

    final isValid = Formz.validate([newName]);

    state = state.copyWith(
      name: newName,
      isValid: isValid,
    );
  }

  void reset() {
    state = state.copyWith(
      name: NewName.pure(currentName),
      isValid: false,
    );
  }
}
