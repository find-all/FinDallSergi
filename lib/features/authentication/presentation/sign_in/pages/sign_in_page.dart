import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/features/authentication/presentation/auth/widgets/auth_layout.dart';
import 'package:flutter/material.dart';

import '../widgets/sign_in_form.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      form: const SignInForm(),
      formButton: const SignInButton(),
      bottomNavigation: TextButton(
        onPressed: () {
          // AutoRouter.of(context).push(const SignUpRoute());
            AutoRouter.of(context).replace(const HomeRoute());
        },
        child: Text(
          context.loc.dontHaveAccount,
          style: context.theme.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
