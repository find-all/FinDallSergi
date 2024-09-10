import 'dart:io';

import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/custom_image_picker.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:fin_dall/features/profile/presentation/change_image/controllers/change_user_image_controller.dart';
import 'package:fin_dall/features/profile/presentation/profile/controllers/profile_controller.dart';
import 'package:fin_dall/features/profile/presentation/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

/// [ChangeProfileImageAvatar] is a widget that displays the profile image avatar with a change image button.
///
/// It provides a way to change the profile image in the [ProfileHeader] widget
///
class ChangeProfileImageAvatar extends StatelessWidget {
  final double radius;

  const ChangeProfileImageAvatar({
    super.key,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: 'profile_avatar',
          child: ProfileAvatar(
            radius: radius,
            iconSize: 40,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Consumer(builder: (context, ref, _) {
            ref.listen<ControllerState<Profile>>(
                changeUserImageControllerProvider, (previous, next) {
              switch (next) {
                case ControllerStateInitial<Profile>():
                  context.loaderOverlay.hide();
                  break;
                case ControllerStateLoading<Profile>():
                  context.loaderOverlay.show();
                  break;
                case ControllerStateData<Profile>(data: final profile):
                  context.loaderOverlay.hide();
                  ref
                      .read(profileControllerProvider.notifier)
                      .updateProfile(profile);
                  context.showSuccessSnackBar(
                      content: context.loc.changeProfileImageSuccess);
                  break;
                case ControllerStateError<Profile>(error: final failure):
                  context.loaderOverlay.hide();
                  context.showErrorSnackBar(
                    content: failure.getUIMessage(
                      context: context,
                    ),
                  );
                  break;
              }
            });

            return InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () async {
                final result = await showCustomImagePicker(
                  context: context,
                  previewImageBuilder: (imageProvider) {
                    return CircleAvatar(
                      radius: 60,
                      backgroundColor: context.colorScheme.onPrimaryContainer,
                      backgroundImage: imageProvider,
                    );
                  },
                );

                if (result != null) {
                  ref
                      .read(changeUserImageControllerProvider.notifier)
                      .changeUserImage(
                        image: File(result.path),
                      );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(5),
                child: Icon(
                  Icons.edit,
                  color: context.colorScheme.onPrimary,
                  size: 20,
                ),
              ),
            ).animate(
              delay: 250.ms,
              effects: [
                ScaleEffect(
                  duration: 150.ms,
                  curve: Curves.easeInOut,
                ),
                FadeEffect(
                  duration: 150.ms,
                  curve: Curves.easeInOut,
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
