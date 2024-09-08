import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/custom_image.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:fin_dall/features/profile/presentation/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileExtendedNavbar extends ConsumerWidget {
  const ProfileExtendedNavbar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final profile = ref.watch(profileControllerProvider);

    return switch (profile) {
      ControllerStateInitial() || ControllerStateLoading() => const ListTile(
          leading: ShimmerCircle(
            radius: 20,
          ),
          title: ShimmerBox(
            width: 100,
            height: 20,
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 2),
            child: ShimmerBox(
              width: 100,
              height: 16,
            ),
          ),
        ),
      ControllerStateData(data: final profile) => ListTile(
          leading: CustomCircleImage(
            image: profile.photoUrl,
            emptyIcon: Icons.person,
            radius: 20,
          ),
          title: Text(profile.name),
          subtitle: Text(profile.email),
        ),
      _ => ListTile(
          leading: const CustomCircleImage(
            emptyIcon: Icons.person,
            radius: 20,
          ),
          title: Text(context.loc.unknown),
          subtitle: Text(context.loc.unknown),
        ),
    };
  }
}

class ProfileMediumNavbar extends ConsumerWidget {
  const ProfileMediumNavbar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final profile = ref.watch(profileControllerProvider);

    return switch (profile) {
      ControllerStateInitial() ||
      ControllerStateLoading() =>
        const ShimmerCircle(
          radius: 20,
        ),
      ControllerStateData(data: final profile) => CustomCircleImage(
          image: profile.photoUrl,
          emptyIcon: Icons.person,
          radius: 20,
        ),
      _ => const CustomCircleImage(
          emptyIcon: Icons.person,
          radius: 20,
        ),
    };
  }
}
