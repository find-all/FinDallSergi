import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/features/app_language/presentation/widgets/app_language_selector.dart';
import 'package:fin_dall/features/app_theme/presentation/widgets/app_theme_selector.dart';
import 'package:fin_dall/features/profile/presentation/change_image/views/change_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: const ProfileCompactHeader(),
      medium: const ProfileMediumHeader(),
      defaultWidget: const ProfileExtendHeader(),
    );
  }
}

class ProfileCompactHeader extends StatelessWidget {
  const ProfileCompactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colorScheme.surface,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: SizedBox(
        height: context.height * 0.3,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                      onPressed: () => AutoRouter.of(context).maybePop(),
                    ).animate(
                      delay: 0.ms,
                      effects: [
                        FadeEffect(
                          duration: 150.ms,
                          curve: Curves.easeInOut,
                        ),
                      ],
                    ),
                    const Spacer(),
                    AppThemeSelector(
                      color: context.colorScheme.onPrimaryContainer,
                    ).animate(
                      delay: 25.ms,
                      effects: [
                        FadeEffect(
                          duration: 150.ms,
                          curve: Curves.easeInOut,
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    AppLanguageSelector(
                      color: context.colorScheme.onPrimaryContainer,
                    ).animate(
                      delay: 50.ms,
                      effects: [
                        FadeEffect(
                          duration: 150.ms,
                          curve: Curves.easeInOut,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                ChangeProfileImageAvatar(
                  radius: context.height * 0.07,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMediumHeader extends StatelessWidget {
  const ProfileMediumHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeProfileImageAvatar(
      radius: context.height * 0.05,
    );
  }
}

class ProfileExtendHeader extends StatelessWidget {
  const ProfileExtendHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeProfileImageAvatar(
      radius: context.height * 0.05,
    );
  }
}
