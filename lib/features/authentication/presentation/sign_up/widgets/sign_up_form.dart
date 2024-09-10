import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/email_input.dart';
import 'package:fin_dall/core/widgets/name_input.dart';
import 'package:fin_dall/core/widgets/password_input.dart';
import 'package:fin_dall/features/authentication/presentation/sign_up/controllers/sign_up_controller.dart';
import 'package:fin_dall/features/authentication/presentation/sign_up/controllers/sign_up_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class SignUpForm extends ConsumerWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<ControllerState<({String email, String token})>>(
        signUpControllerProvider, (previous, next) {
      switch (next) {
        case ControllerStateInitial():
          context.loaderOverlay.hide();
          break;
        // On loading states, show the loader overlay
        case ControllerStateLoading():
          context.loaderOverlay.show();
          break;
        // On success, navigate to the email verification page
        case ControllerStateData<({String email, String token})>(
            data: final response
          ):
          context.loaderOverlay.hide();
          AutoRouter.of(context).replaceAll(
            [
              VerifyAccountRoute(
                token: response.token,
              ),
            ],
          );

          break;
        // On failure, show a snackbar with the error message
        case ControllerStateError(error: final error):
          context.loaderOverlay.hide();
          context.showErrorSnackBar(
            content: error.getUIMessage(
              context: context,
            ),
          );

          break;
      }
    });

    // Listen to the SignUpBloc state changes
    return Column(
      children: [
        Consumer(
          builder: (context, ref, child) {
            final name = ref.watch(
                signUpFormControllerProvider.select((value) => value.name));
            return NameInput(
              name: name,
              onChanged:
                  ref.read(signUpFormControllerProvider.notifier).nameChanged,
              textInputAction: TextInputAction.next,
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Consumer(
          builder: (context, ref, child) {
            final email = ref.watch(
                signUpFormControllerProvider.select((value) => value.email));
            return EmailInput(
              email: email,
              onChanged: (value) {
                ref
                    .read(signUpFormControllerProvider.notifier)
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
                signUpFormControllerProvider.select((value) => value.isValid));
            final password = ref.watch(
                signUpFormControllerProvider.select((value) => value.password));
            return PasswordInput(
              password: password,
              onChanged: (value) {
                ref
                    .read(signUpFormControllerProvider.notifier)
                    .passwordChanged(value);
              },
              onSubmitted: isValid
                  ? (value) {
                      final form = ref.read(signUpFormControllerProvider);
                      ref.read(signUpControllerProvider.notifier).signUp(
                            name: form.name.value,
                            email: form.email.value,
                            password: form.password.value,
                          );
                    }
                  : null,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }
}

class SignUpButton extends ConsumerWidget {
  final _key = const Key('sign_up_form_button');

  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isValidForm = ref
        .watch(signUpFormControllerProvider.select((value) => value.isValid));
    return SizedBox(
      width: context.width,
      child: ElevatedButton(
        key: _key,
        // If the form is not valid, disable the button
        onPressed: isValidForm
            ? () {
                // Call the sign Up with credentials event
                final form = ref.read(signUpFormControllerProvider);

                ref.read(signUpControllerProvider.notifier).signUp(
                      name: form.name.value,
                      email: form.email.value,
                      password: form.password.value,
                    );
              }
            : null,
        child: Text(context.loc.signUp),
      ),
    );
  }
}
