import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/code_input.dart';
import 'package:fin_dall/core/widgets/confirm_new_password_input.dart';
import 'package:fin_dall/core/widgets/new_password_input.dart';
import 'package:fin_dall/features/authentication/presentation/forget_password/controllers/reset_password_controller.dart';
import 'package:fin_dall/features/authentication/presentation/forget_password/controllers/reset_password_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class ResetPasswordForm extends ConsumerWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<ControllerState<void>>(resetPasswordControllerProvider,
        (previous, next) {
      switch (next) {
        case ControllerStateInitial<void>():
          context.loaderOverlay.hide();
          break;
        case ControllerStateLoading<void>():
          context.loaderOverlay.show();
          break;
        case ControllerStateData<void>():
          context.loaderOverlay.hide();

          context.showSuccessSnackBar(
            content: context.loc.resetPasswordSuccess,
            duration: const Duration(
              milliseconds: 600,
            ),
            onClosed: () => context.router.replaceAll([
              const SignInRoute(),
            ]),
          );

          break;
        case ControllerStateError<void>(error: final error):
          context.loaderOverlay.hide();
          final errorMessage = error.getUIMessage(context: context);
          context.showErrorSnackBar(
            content: errorMessage,
          );
          break;
      }
    });
    return Column(
      children: [
        Consumer(
          builder: (context, ref, child) {
            final newPassword = ref.watch(resetPasswordFormControllerProvider
                .select((value) => value.password));
            return NewPasswordInput(
              password: newPassword,
              onChanged: (value) {
                ref
                    .read(resetPasswordFormControllerProvider.notifier)
                    .passwordChanged(value);
              },
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Consumer(
          builder: (context, ref, child) {
            final confirmNewPassword = ref.watch(
                resetPasswordFormControllerProvider
                    .select((value) => value.confirmPassword));
            return ConfirmNewPasswordInput(
              password: confirmNewPassword,
              onChanged: (value) {
                ref
                    .read(resetPasswordFormControllerProvider.notifier)
                    .confirmPasswordChanged(value);
              },
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Consumer(
          builder: (context, ref, child) {
            final code = ref.watch(resetPasswordFormControllerProvider
                .select((value) => value.code));

            return CodeInput(
              code: code,
              onChanged: (value) {
                ref
                    .read(resetPasswordFormControllerProvider.notifier)
                    .codeChanged(value);
              },
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }
}

class ResetPasswordFormButton extends ConsumerWidget {
  final String token;

  const ResetPasswordFormButton({super.key, required this.token});

  @override
  Widget build(BuildContext context, ref) {
    final isValidForm = ref.watch(
        resetPasswordFormControllerProvider.select((value) => value.isValid));

    return SizedBox(
      width: context.width,
      child: ElevatedButton(
        // If the form is not valid, disable the button
        onPressed: isValidForm
            ? () {
                final form = ref.read(resetPasswordFormControllerProvider);

                ref
                    .read(resetPasswordControllerProvider.notifier)
                    .resetPassword(
                      code: form.code.value,
                      password: form.password.value,
                      token: token,
                    );
              }
            : null,
        child: Text(context.loc.send),
      ),
    );
  }
}
