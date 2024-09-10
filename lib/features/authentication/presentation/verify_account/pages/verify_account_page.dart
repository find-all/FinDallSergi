// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/features/authentication/presentation/auth/widgets/auth_layout.dart';
import 'package:fin_dall/features/authentication/presentation/sign_out/controllers/sign_out_controller.dart';
import 'package:fin_dall/features/authentication/presentation/verify_account/widgets/verify_account_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class VerifyAccountPage extends StatelessWidget {
  final String token;

  const VerifyAccountPage({
    super.key,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      form: VerifyAccountForm(
        token: token,
      ),
      formButton: VerifyAccountFormButton(
        token: token,
      ),
      bottomNavigation: Consumer(builder: (context, ref, _) {
        return TextButton(
          onPressed: () async {
            final result = await showDialog(
              context: context,
              useSafeArea: true,
              builder: (context) => AlertDialog(
                title: Text(
                  context.loc.cancelVerification,
                  style: context.theme.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  context.loc.cancelVerificationDescription,
                  style: context.theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text(
                      context.loc.no,
                      style: context.theme.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.error,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text(
                      context.loc.yes,
                      style: context.theme.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            );

            if (result == true) {
              // Sign out the user
              ref.read(signOutControllerProvider.notifier).signOut();
              AutoRouter.of(context).replace(const SignInRoute());
            }
          },
          child: Text(
            context.loc.cancel,
            style: context.theme.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        );
      }),
    );
  }
}
