import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/confirm_new_password_input.dart';
import 'package:fin_dall/core/widgets/new_password_input.dart';
import 'package:fin_dall/core/widgets/password_input.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:fin_dall/features/profile/presentation/change_password/export.dart';
import 'package:fin_dall/features/profile/presentation/widgets/change_profile_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

/// [showPasswordEditor] is a function that shows the password editor modal sheet.
///
Future<Profile?> showPasswordEditor(BuildContext context) {
  return Navigator.push<Profile?>(
    context,
    ModalSheetRoute(
      builder: (context) => const ChangePasswordEditor(),
    ),
  );
}

/// [ChangePasswordEditor] is a widget that displays the password editor.
///
/// It provides a form for changing the pàssword.
///
class ChangePasswordEditor extends ConsumerWidget {
  const ChangePasswordEditor({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    // Listen to the profile state to show the loader overlay and handle the navigation.
    ref.listen<ControllerState<Profile>>(changePasswordControllerProvider,
        (previous, next) {
      switch (next) {
        case ControllerStateInitial():
          context.loaderOverlay.hide();
          break;
        case ControllerStateLoading():
          context.loaderOverlay.show();
          break;
        case ControllerStateData(data: final profile):
          context.loaderOverlay.hide();
          AutoRouter.of(context).maybePop(profile).then(
                (value) => context.showSuccessSnackBar(
                  content: context.loc.changePasswordSuccess,
                ),
              );
          break;
        case ControllerStateError(error: final error):
          context.loaderOverlay.hide();
          context.showErrorSnackBar(
            content: error.getUIMessage(context: context),
          );

          break;
      }
    });

    final isValid = ref.watch(
        changePasswordFormControllerProvider.select((value) => value.isValid));
    return ChangeProfileEditor(
      title: context.loc.changePasswordTitle,
      description: context.loc.changePasswordDescription,
      onCanceled: () =>
          ref.read(changePasswordFormControllerProvider.notifier).reset(),
      onSubmitted: isValid
          ? () {
              final form = ref.read(changePasswordFormControllerProvider);

              ref
                  .read(changePasswordControllerProvider.notifier)
                  .changePassword(
                    newPassword: form.newPassword.value,
                  );
            }
          : null,
      children: [
        const SizedBox(height: 10),
        Consumer(
          builder: (context, ref, child) {
            final currentPassword = ref.watch(
              changePasswordFormControllerProvider
                  .select((value) => value.currentPassword),
            );
            return PasswordInput(
              password: currentPassword,
              onChanged: ref
                  .read(changePasswordFormControllerProvider.notifier)
                  .currentPasswordChanged,
              textInputAction: TextInputAction.next,
            );
          },
        ),
        const SizedBox(height: 10),
        Consumer(
          builder: (context, ref, child) {
            final newPassword = ref.watch(
              changePasswordFormControllerProvider
                  .select((value) => value.newPassword),
            );
            return NewPasswordInput(
              password: newPassword,
              onChanged: ref
                  .read(changePasswordFormControllerProvider.notifier)
                  .newPasswordChanged,
              textInputAction: TextInputAction.next,
            );
          },
        ),
        const SizedBox(height: 10),
        Consumer(
          builder: (context, ref, child) {
            final confirmNewPassword = ref.watch(
              changePasswordFormControllerProvider
                  .select((value) => value.confirmNewPassword),
            );
            return ConfirmNewPasswordInput(
              password: confirmNewPassword,
              onChanged: ref
                  .read(changePasswordFormControllerProvider.notifier)
                  .confirmNewPasswordChanged,
              textInputAction: TextInputAction.done,
            );
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
