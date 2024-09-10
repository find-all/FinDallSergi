import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/authentication/presentation/sign_out/controllers/sign_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class SignOutButton extends ConsumerWidget {
  final bool _expanded;

  const SignOutButton({super.key}) : _expanded = true;

  const SignOutButton.icon({super.key}) : _expanded = false;

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<ControllerState<void>>(signOutControllerProvider,
        (previous, next) {
      switch (next) {
        case ControllerStateInitial<void>():
          context.loaderOverlay.hide();
          break;
        case ControllerStateLoading<void>():
          context.loaderOverlay.show();
          break;
        case ControllerStateData<void>():
          context.loaderOverlay.hide();
          AutoRouter.of(context).replaceAll([const SignInRoute()]);
          break;
        case ControllerStateError<void>(error: final error):
          context.loaderOverlay.hide();
          context.showErrorSnackBar(
              content: error.getUIMessage(context: context));
          break;
      }
    });

    if (!_expanded) {
      return Container(
        decoration: BoxDecoration(
          color: context.colorScheme.error.withOpacity(0.6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          splashColor: context.colorScheme.error.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            ref.read(signOutControllerProvider.notifier).signOut();
          },
          child: AspectRatio(
            aspectRatio: 1,
            child: Center(
              child: Icon(
                Icons.exit_to_app,
                color: context.colorScheme.onError,
              ),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: ElevatedButtonTheme(
        data: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.error,
            foregroundColor: context.colorScheme.onError,
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            ref.read(signOutControllerProvider.notifier).signOut();
          },
          child: Text(
            context.loc.signOut,
          ),
        ),
      ),
    );
  }
}
