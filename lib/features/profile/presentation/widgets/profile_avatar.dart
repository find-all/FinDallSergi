import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/avatar.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';
import 'package:fin_dall/features/profile/presentation/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [ProfileAvatar] is a widget that displays an image or an icon inside a circle.
class ProfileAvatar extends ConsumerWidget {
  // Radius of the avatar
  final double? radius;
  // URL of the image to be displayed
  final String? imageUrl;
  // Background color of the avatar
  final Color? backgroundColor;
  // Color of the icon
  final Color? iconColor;
  // Size of the icon
  final double? iconSize;
  // Function to be executed when the avatar is tapped
  final void Function()? onTap;

  // Constructor for the widget
  const ProfileAvatar({
    super.key,
    this.radius,
    this.imageUrl,
    this.backgroundColor,
    this.iconColor,
    this.iconSize,
    this.onTap,
  });

  // Function to build the avatar when the profile is successfully loaded
  Widget _buildSuccessProfileAvatar(Profile profile) {
    final avatar = Avatar(
      radius: radius,
      imageUrl: profile.photoUrl,
      backgroundColor: backgroundColor,
      iconColor: iconColor,
      iconSize: iconSize,
    );
    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: avatar,
      );
    }
    return avatar;
  }

  // Function to build the avatar when the profile is not loaded
  Widget _buildEmptyProfileAvatar(
      Color? customBackgroundColor, Color? customIconColor) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: customBackgroundColor ?? backgroundColor,
      child: Icon(
        Icons.person,
        color: customIconColor ?? iconColor,
        size: iconSize,
      ),
    );
  }

  // Building the widget
  @override
  Widget build(BuildContext context, ref) {
    final profile = ref.watch(profileControllerProvider);
    return switch (profile) {
      // When the profile is not loaded yet
      ControllerStateInitial() => _buildEmptyProfileAvatar(null, null),
      // When there is an error loading the profile
      ControllerStateError() => _buildEmptyProfileAvatar(
          context.theme.colorScheme.error.withOpacity(0.2),
          context.theme.colorScheme.error,
        ),
      // When the profile is loading
      ControllerStateLoading() => ShimmerCircle(
          radius: radius,
        ),
      // When the profile is successfully loaded
      ControllerStateData(data: final profile) =>
        _buildSuccessProfileAvatar(profile),
    };
  }
}
