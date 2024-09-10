import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/responsive_alert_dialog.dart';
import 'package:fin_dall/features/authentication/presentation/sign_out/controllers/sign_out_controller.dart';
import 'package:fin_dall/features/authentication/presentation/sign_out/widgets/sign_out_button.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:fin_dall/features/profile/presentation/change_name/widgets/change_name.dart';
import 'package:fin_dall/features/profile/presentation/change_password/widget/change_password.dart';
import 'package:fin_dall/features/profile/presentation/delete_account/controllers/delete_account_controller.dart';
import 'package:fin_dall/features/profile/presentation/profile/controllers/profile_controller.dart';
import 'package:fin_dall/features/profile/presentation/widgets/profile_edit_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class ProfileBody extends ConsumerWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final profileState = ref.watch(profileControllerProvider);
    return switch (profileState) {
      ControllerStateInitial<Profile>() => const ProfileLoading(),
      ControllerStateLoading<Profile>() => const ProfileLoading(),
      ControllerStateData<Profile>(data: final profile) => ProfileData(
          profile: profile,
        ),
      ControllerStateError<Profile>() => const ProfileLoading(),
    };
  }
}

class ProfileData extends ConsumerWidget {
  final Profile profile;

  const ProfileData({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context, ref) {
    return SingleChildScrollView(
      child: Column(
        children: AnimateList(
          children: [
            // A separator

            // A loaded tile for the name
            ProfileEditTile.loaded(
              params: ProfileEditTileParamsLoaded(
                icon: Icons.person,
                title: context.loc.name,
                subtitle: profile.name,
                onTap: () async {
                  final result = await showNameEditor(context, profile.name);

                  if (result != null) {
                    ref
                        .read(profileControllerProvider.notifier)
                        .updateProfile(result);
                  }
                },
              ),
            ),

            // A loaded tile for the email
            ProfileEditTile.loaded(
              params: ProfileEditTileParamsLoaded(
                icon: Icons.email,
                title: context.loc.email,
                subtitle: profile.email,
                onTap: null,
              ),
            ),

            // A loaded tile for the password

            ProfileEditTile.loaded(
              params: ProfileEditTileParamsLoaded(
                icon: Icons.key,
                title: context.loc.changePasswordTitle,
                subtitle: '********',
                onTap: () async {
                  final result = await showPasswordEditor(context);

                  if (result != null) {
                    ref
                        .read(profileControllerProvider.notifier)
                        .updateProfile(result);
                  }
                },
              ),
            ),

            // A tile for deleting the account

            Consumer(
              builder: (context, ref, child) {
                ref.listen<ControllerState<void>>(
                    deleteAccountControllerProvider, (previous, next) {
                  switch (next) {
                    case ControllerStateInitial<void>():
                      context.loaderOverlay.hide();
                      break;
                    case ControllerStateLoading<void>():
                      context.loaderOverlay.show();
                      break;
                    case ControllerStateData<void>():
                      context.loaderOverlay.hide();
                      ref.read(signOutControllerProvider.notifier).signOut();
                      context.router.replaceAll([const AuthRoute()]);
                      break;
                    case ControllerStateError<void>(error: final error):
                      context.loaderOverlay.hide();
                      context.showErrorSnackBar(
                        content: error.getUIMessage(
                          context: context,
                        ),
                      );
                      break;
                  }
                });
                return ProfileEditTile.deleteAccount(
                  params: ProfileEditTileParamsDeleteAccount(
                    icon: Icons.delete_forever,
                    title: context.loc.deleteAccount,
                    subtitle: context.loc.deleteAccountShortDescription,
                    onTap: () async {
                      final result = await showResponsiveAlertDialog<bool?>(
                        context: context,
                        title: context.loc.deleteAccount,
                        content: context.loc.deleteAccountDescription,
                      );

                      if (result == true) {
                        ref
                            .read(deleteAccountControllerProvider.notifier)
                            .deleteAccount();
                      }
                    },
                  ),
                );
              },
            ),
            context.getResponsiveWidget(
              compact: const SizedBox(
                height: 10,
              ),
              defaultWidget: const SizedBox(),
            ),

            context.getResponsiveWidget(
              compact: const SignOutButton(),
              defaultWidget: const SizedBox(),
            ),
          ],
          interval: 50.ms,
          effects: [
            SlideEffect(
              duration: 200.ms,
              // From left to right
              begin: const Offset(-1, 0),
              end: const Offset(0, 0),
              curve: Curves.easeOut,
            ),
            FadeEffect(
              duration: 150.ms,
              delay: 50.ms,
              curve: Curves.easeOut,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileLoading extends StatelessWidget {
  const ProfileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        // A loading tile for the name
        ProfileEditTile.loading(
          params: ProfileEditTileParamsLoading(
            icon: Icons.person,
            title: context.loc.name,
          ),
        ),
        // A separator
        const SizedBox(height: 20),
        // A loading tile for the email
        ProfileEditTile.loading(
          params: ProfileEditTileParamsLoading(
              icon: Icons.email, title: context.loc.email),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
