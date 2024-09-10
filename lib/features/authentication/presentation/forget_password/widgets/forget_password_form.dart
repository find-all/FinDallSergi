import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/error/api_failure.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/email_input.dart';
import 'package:fin_dall/features/authentication/presentation/forget_password/controllers/forget_password_controller.dart';
import 'package:fin_dall/features/authentication/presentation/forget_password/controllers/forget_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class ForgetPasswordForm extends ConsumerWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<ControllerState<String>>(forgetPasswordControllerProvider,
        (previous, next) {
      switch (next) {
        case ControllerStateInitial<String>():
          context.loaderOverlay.hide();
          break;
        // On loading states, show the loader overlay
        case ControllerStateLoading<String>():
          context.loaderOverlay.show();
          break;
        // On success, show a snackbar with the success message
        case ControllerStateData<String>(data: final token):
          context.loaderOverlay.hide();
          context.showSuccessSnackBar(
            content: context.loc.resetPasswordEmailSent,
            duration: const Duration(
              milliseconds: 600,
            ),
            onClosed: () => context.router.replace(
              ResetPasswordRoute(
                token: token,
              ),
            ),
          );
          break;
        // On failure, show a snackbar with the error message
        case ControllerStateError<String>(error: final error):
          context.loaderOverlay.hide();

          final errorMessage = (error is NotFoundFailure)
              ? context.loc.errorUserNotFound
              : error.getUIMessage(context: context);
          context.showErrorSnackBar(
            content: errorMessage,
          );
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
            final email = ref.watch(forgetPasswordFormControllerProvider
                .select((value) => value.email));
            return EmailInput(
              email: email,
              onChanged: (value) {
                ref
                    .read(forgetPasswordFormControllerProvider.notifier)
                    .emailChanged(
                      value,
                    );
              },
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }
}

/// Send reset password button
///
/// The sign in button listens to the [ForgetPasswordNotifier] state changes.
///
/// The button is disabled when the form is not valid.
///
/// When the button is pressed, the send reset password email process starts.
///
class SendResetPasswordButton extends ConsumerWidget {
  final _key = const Key('send_reset_password_email_button');

  const SendResetPasswordButton({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isValidForm = ref.watch(
        forgetPasswordFormControllerProvider.select((value) => value.isValid));

    return SizedBox(
      width: context.width,
      child: ElevatedButton(
        key: _key,
        // If the form is not valid, disable the button
        onPressed: isValidForm
            ? () {
                final form = ref.read(forgetPasswordFormControllerProvider);

                // Send the reset password email
                ref
                    .read(forgetPasswordControllerProvider.notifier)
                    .sendResetPasswordEmail(
                      email: form.email.value,
                    );
              }
            : null,
        child: Text(context.loc.send),
      ),
    );
  }
}
