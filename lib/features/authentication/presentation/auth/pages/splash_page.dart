import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/features/authentication/presentation/auth/controllers/auth_controller.dart';
import 'package:fin_dall/features/authentication/presentation/auth/controllers/check_local_auth_controller.dart';
import 'package:fin_dall/features/authentication/presentation/sign_out/controllers/sign_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<CheckLocalAuthControllerState>(checkLocalAuthControllerProvider,
        (previous, next) {
      switch (next) {
        case CheckLocalAuthControllerStateInitial():
          break;
        case CheckLocalAuthControllerStateLoading():
          break;
        case CheckLocalAuthControllerStateData(user: final user):
          ref.read(authControllerProvider.notifier).authorized(user: user);
          FlutterNativeSplash.remove();
          AutoRouter.of(context).replace(
            const HomeRoute(),
          );
          break;
        case CheckLocalAuthControllerStateUnverifyData(token: final token):
          ref.read(authControllerProvider.notifier).unauthorized();
          FlutterNativeSplash.remove();
          AutoRouter.of(context).replace(
            VerifyAccountRoute(
              token: token,
            ),
          );
          break;
        case CheckLocalAuthControllerStateError():
          ref.read(signOutControllerProvider.notifier).signOut();
          ref.read(authControllerProvider.notifier).unauthorized();
          FlutterNativeSplash.remove();
          AutoRouter.of(context).replace(
            const SignInRoute(),
          );
          break;
      }
    });

    ref.watch(checkLocalAuthControllerProvider);

    return const SizedBox();
  }
}
