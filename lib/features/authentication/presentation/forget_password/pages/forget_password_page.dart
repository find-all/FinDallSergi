import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/features/authentication/presentation/auth/widgets/auth_layout.dart';
import 'package:fin_dall/features/authentication/presentation/forget_password/widgets/forget_password_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      form: const ForgetPasswordForm(),
      formButton: const SendResetPasswordButton(),
      bottomNavigation: TextButton(
        onPressed: () async {
          AutoRouter.of(context).replace(
            const SignInRoute(),
          );
        },
        child: Text(
          context.loc.backToSignIn,
          style: context.theme.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
