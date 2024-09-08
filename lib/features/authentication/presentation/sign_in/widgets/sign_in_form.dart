import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/email_input.dart';
import 'package:fin_dall/core/widgets/password_input.dart';
import 'package:fin_dall/features/authentication/presentation/auth/controllers/auth_controller.dart';
import 'package:fin_dall/features/authentication/presentation/sign_in/controllers/sign_in_controller.dart';
import 'package:fin_dall/features/authentication/presentation/sign_in/controllers/sign_in_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

/// Sign in form. Contains email and password input fields and sign in button.
///
/// When the form is submitted, the [SignInNotifier] calls sign in with credentials method.
///
/// If the form is not valid, the sign in button is disabled.
///
/// When user presses the sign in with apple or sign in with google buttons, the [SignInNotifier] calls sign in with apple or sign in with google methods.
///
class SignInForm extends ConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<SignInState>(signInControllerProvider, (previous, next) {
      switch (next) {
        case SignInStateInitial():
          context.loaderOverlay.hide();
          break;
        case SignInStateLoading():
          context.loaderOverlay.show();
          break;

        // On success, navigate to the home page if the email is verified, otherwise navigate to the email verification page
        case SignInStateData(user: final user):
          context.loaderOverlay.hide();
          ref.read(authControllerProvider.notifier).authorized(user: user);
          AutoRouter.of(context).replace(
            const HomeRoute(),
          );

          break;
        // USer exists but not verified
        case SignInStateUnverifiedData(token: final token):
          context.loaderOverlay.hide();
          ref.read(authControllerProvider.notifier).unauthorized();
          AutoRouter.of(context).replace(
            VerifyAccountRoute(
              token: token,
            ),
          );

          break;
        // On failure, show a snackbar with the error message
        case SignInStateError(error: final error):
          context.loaderOverlay.hide();
          context.showErrorSnackBar(
            content: error.getUIMessage(
              context: context,
            ),
          );
          break;
      }
    });

    // Listen to the SignInBloc state changes
    return Column(
      children: [
        Consumer(
          builder: (context, ref, child) {
            final email = ref.watch(
                signInFormControllerProvider.select((value) => value.email));

            return EmailInput(
              email: email,
              onChanged: (value) {
                ref
                    .read(signInFormControllerProvider.notifier)
                    .emailChanged(value);
              },
              textInputAction: TextInputAction.next,
            );
          },
        ),

        const SizedBox(
          height: 10,
        ),
        Consumer(
          builder: (context, ref, child) {
            final isValid = ref.watch(
                signInFormControllerProvider.select((value) => value.isValid));
            final password = ref.watch(
                signInFormControllerProvider.select((value) => value.password));

            return PasswordInput(
              password: password,
              onChanged: (value) {
                ref
                    .read(signInFormControllerProvider.notifier)
                    .passwordChanged(value);
              },
              onSubmitted: isValid
                  ? (value) {
                      final form = ref.read(signInFormControllerProvider);
                      ref.read(signInControllerProvider.notifier).signIn(
                          email: form.email.value,
                          password: form.password.value);
                    }
                  : null,
              textInputAction: TextInputAction.done,
            );
          },
        ),
        // Forget password nevigation
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              AutoRouter.of(context).replace(const ForgetPasswordRoute());
            },
            child: Text(
              context.loc.forgetPassword,
              style: context.theme.textTheme.bodyMedium?.copyWith(
                color: context.theme.colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Sign in button
///
/// The sign in button listens to the [SignInFormController] state changes.
///
/// The button is disabled when the form is not valid.
///
/// When the button is pressed, the [ControllerState] event in [SignInController].
///
class SignInButton extends ConsumerWidget {
  final _key = const Key('sign_in_form_button');

  const SignInButton({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isValidForm = ref
        .watch(signInFormControllerProvider.select((value) => value.isValid));

    return SizedBox(
      width: context.width,
      child: ElevatedButton(
        key: _key,
        // If the form is not valid, disable the button
        onPressed: isValidForm
            ? () {
                final form = ref.read(signInFormControllerProvider);

                ref.read(signInControllerProvider.notifier).signIn(
                      email: form.email.value,
                      password: form.password.value,
                    );
              }
            : null,
        child: Text(context.loc.signIn),
      ),
    );
  }
}


/*
class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SignInButton(),
        const SizedBox(height: 20),
        if (Platform.isAndroid) Center(child: _SignInWithGoogle()),
        if (Platform.isIOS)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SignInWithApple(),
              const SizedBox(width: 30),
              _SignInWithGoogle(),
            ],
          ),
      ],
    );
  }
}

/// Sign in button
///
/// The sign in button listens to the [SignInFormController] state changes.
///
/// The button is disabled when the form is not valid.
///
/// When the button is pressed, the [ControllerState] event in [SignInController].
///
class _SignInButton extends ConsumerWidget {
  final _key = const Key('sign_in_form_button');

  @override
  Widget build(BuildContext context, ref) {
    final isValidForm = ref
        .watch(signInFormControllerProvider.select((value) => value.isValid));

    return SizedBox(
      width: context.width,
      child: ElevatedButton(
        key: _key,
        // If the form is not valid, disable the button
        onPressed: isValidForm
            ? () {
                final form = ref.read(signInFormControllerProvider);

                ref
                    .read(signInControllerProvider.notifier)
                    .signIn(
                      email: form.email.value,
                      password: form.password.value,
                    );
              }
            : null,
        child: Text(context.loc.signIn),
      ),
    );
  }
}


class _SignInWithApple extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return AppleAuthButton(
      onPressed: () {
        ref.read(signInControllerProvider.notifier).signInWithApple();
      },
      darkMode: context.isDark,
      style: AuthButtonStyle.icon,
      borderWidth: 0,
      borderColor: Colors.transparent,
      elevation: 0,
    );
  }
}

class _SignInWithGoogle extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return GoogleAuthButton(
      onPressed: () {
        ref.read(signInControllerProvider.notifier).signInWithGoogle();
      },
      darkMode: context.isDark,
      style: AuthButtonStyle.icon,
      borderWidth: 0,
      borderColor: Colors.transparent,
      elevation: 0,
    );
  }
}
*/