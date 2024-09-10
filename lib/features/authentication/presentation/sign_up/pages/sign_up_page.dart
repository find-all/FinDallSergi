import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/features/authentication/presentation/auth/widgets/auth_layout.dart';
import 'package:fin_dall/features/authentication/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
        form: const SignUpForm(),
        formButton: const SignUpButton(),
        bottomNavigation: TextButton(
          onPressed: () {
            AutoRouter.of(context).push(const SignInRoute());
          },
          child: Text(
            context.loc.backToSignIn,
            style: context.theme.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ));
  }
}
