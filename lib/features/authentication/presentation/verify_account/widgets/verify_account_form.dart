import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/code_input.dart';
import 'package:fin_dall/features/authentication/domain/entities/user.dart';
import 'package:fin_dall/features/authentication/presentation/auth/controllers/auth_controller.dart';
import 'package:fin_dall/features/authentication/presentation/verify_account/controllers/resend_code_controller.dart';
import 'package:fin_dall/features/authentication/presentation/verify_account/controllers/verify_account_controller.dart';
import 'package:fin_dall/features/authentication/presentation/verify_account/controllers/verify_account_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class VerifyAccountForm extends ConsumerWidget {
  final String token;

  const VerifyAccountForm({
    super.key,
    required this.token,
  });

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<ControllerState<User>>(verifyAccountControllerProvider,
        (previous, next) {
      switch (next) {
        case ControllerStateInitial<User>():
          context.loaderOverlay.hide();
          break;
        case ControllerStateLoading<User>():
          context.loaderOverlay.show();
          break;

        // On success, navigate to the home page if the email is verified, otherwise navigate to the email verification page
        case ControllerStateData<User>(data: final user):
          context.loaderOverlay.hide();
          ref.read(authControllerProvider.notifier).authorized(user: user);
          AutoRouter.of(context).replaceAll(
            [
              const HomeRoute(),
            ],
          );

          break;
        // On failure, show a snackbar with the error message
        case ControllerStateError<User>(error: final error):
          context.loaderOverlay.hide();

          final errorMessage = error.getUIMessage(context: context);

          context.showErrorSnackBar(
            content: errorMessage,
          );

          break;
      }
    });

    // Listen to the SignInBloc state changes
    return Column(
      children: [
        Consumer(
          builder: (context, ref, child) {
            final code = ref.watch(
                verifyAccountFormControllerProvider(token: token)
                    .select((value) => value.code));

            return CodeInput(
              code: code,
              onChanged: (value) {
                ref
                    .read(verifyAccountFormControllerProvider(token: token)
                        .notifier)
                    .codeChanged(value);
              },
              textInputAction: TextInputAction.done,
            );
          },
        ),
        const SizedBox(
          height: 30,
        ),
        SendVerificationCodeButton(
          token: token,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class SendVerificationCodeButton extends ConsumerWidget {
  final String token;

  const SendVerificationCodeButton({
    super.key,
    required this.token,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ControllerState<String>>(resendCodeControllerProvider,
        (previous, next) {
      switch (next) {
        case ControllerStateInitial<String>():
          context.loaderOverlay.hide();
          break;
        case ControllerStateLoading<String>():
          context.loaderOverlay.show();
          break;
        case ControllerStateData<String>(data: final token):
          context.loaderOverlay.hide();
          ref
              .read(verifyAccountFormControllerProvider(token: token).notifier)
              .onTokenChanged(token);
          context.showSuccessSnackBar(
            content: context.loc.verificationEmailSent,
          );
          break;
        case ControllerStateError<String>(error: final failure):
          context.loaderOverlay.hide();

          context.showErrorSnackBar(
            content: failure.getUIMessage(context: context),
          );
          break;
      }
    });
    return TextButton(
      onPressed: () {
        ref.read(resendCodeControllerProvider.notifier).resendCode();
      },
      child: Text(context.loc.resendVerificationCode),
    );
  }
}

class VerifyAccountFormButton extends ConsumerWidget {
  final String token;

  const VerifyAccountFormButton({
    super.key,
    required this.token,
  });

  @override
  Widget build(BuildContext context, ref) {
    final isValidForm = ref.watch(
        verifyAccountFormControllerProvider(token: token)
            .select((value) => value.isValid));

    return SizedBox(
      width: context.width,
      child: ElevatedButton(
        // If the form is not valid, disable the button
        onPressed: isValidForm
            ? () {
                final form =
                    ref.read(verifyAccountFormControllerProvider(token: token));

                ref
                    .read(verifyAccountControllerProvider.notifier)
                    .verifyAccount(
                      code: form.code.value,
                      token: form.token,
                    );
              }
            : null,
        child: Text(
          context.loc.accept,
        ),
      ),
    );
  }
}
