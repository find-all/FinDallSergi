import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:fin_dall/core/widgets/detail_scaffold.dart';
import 'package:fin_dall/features/profile/presentation/widgets/profile_body.dart';
import 'package:fin_dall/features/profile/presentation/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: const ProfileCompactPage(),
      defaultWidget: const ProfileExtendPage(),
    );
  }
}

class ProfileCompactPage extends StatelessWidget {
  const ProfileCompactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: MaxWidthBox(
                    maxWidth: const MediumBreakPoint().end,
                    child: const ProfileBody()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileExtendPage extends StatelessWidget {
  const ProfileExtendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      title: context.loc.profile,
      onBackPressed: () => context.router.maybePop(),
      body: Column(
        children: [
          const ProfileHeader(),
          SizedBox(height: context.height * 0.1),
          const ProfileBody(),
        ],
      ),
    );
  }
}
