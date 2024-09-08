import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/features/authentication/presentation/auth/widgets/auth_layout.dart';
import 'package:fin_dall/features/authentication/presentation/forget_password/widgets/reset_password_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ResetPasswordPage extends StatelessWidget {
  final String token;
  const ResetPasswordPage({
    super.key,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      form: const ResetPasswordForm(),
      formButton: ResetPasswordFormButton(
        token: token,
      ),
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
