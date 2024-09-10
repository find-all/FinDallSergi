import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:fin_dall/core/widgets/logo_image.dart';
import 'package:fin_dall/features/authentication/presentation/auth/widgets/auth_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AuthLayout extends StatelessWidget {
  final Widget form;

  final Widget formButton;

  final Widget? bottomNavigation;

  const AuthLayout({
    super.key,
    required this.form,
    required this.formButton,
    this.bottomNavigation,
  });

  @override
  Widget build(BuildContext context) {
    // Get actual breakpoint
    final breakpoint = getBreakPoint(context);

    switch (breakpoint) {
      case CompactBreakPoint() || MediumBreakPoint():
        return AuthBackground.compact(
          child: Scaffold(
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.15,
                    ),
                    LogoImage(
                      logoColor:
                          context.isDark ? LogoColor.white : LogoColor.blue,
                      width: context.width * 0.5,
                      height: context.height * 0.15,
                      fit: BoxFit.scaleDown,
                    ).animate(
                      effects: [
                        const ScaleEffect(
                          begin: Offset(0.5, 0.5),
                          end: Offset(1, 1),
                          duration: Duration(milliseconds: 150),
                          curve: Curves.easeInOut,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.height * 0.1,
                    ),
                    MaxWidthBox(
                      maxWidth: const CompactBreakPoint().end,
                      child: form.animate(
                        effects: [
                          const FadeEffect(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          ),
                          const MoveEffect(
                            begin: Offset(-100, 0),
                            end: Offset(0, 0),
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            delay: Duration(milliseconds: 150),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MaxWidthBox(
                      maxWidth: const CompactBreakPoint().end,
                      child: formButton,
                    ).animate(
                      effects: [
                        const FadeEffect(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          delay: Duration(milliseconds: 450),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (bottomNavigation != null)
                      bottomNavigation!.animate(
                        effects: [
                          const FadeEffect(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            delay: Duration(milliseconds: 500),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      default:
        return AuthBackground.extended(
          child: Scaffold(
            body: Row(
              children: [
                SizedBox(
                  width: context.width * 0.3,
                ),
                Expanded(
                  child: SafeArea(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: context.height * 0.35,
                            ),
                            MaxWidthBox(
                              maxWidth: const CompactBreakPoint().end,
                              child: form.animate(
                                effects: [
                                  const FadeEffect(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  ),
                                  const MoveEffect(
                                    begin: Offset(-100, 0),
                                    end: Offset(0, 0),
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                    delay: Duration(milliseconds: 150),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MaxWidthBox(
                              maxWidth: const CompactBreakPoint().end,
                              child: formButton,
                            ).animate(
                              effects: [
                                const FadeEffect(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                  delay: Duration(milliseconds: 450),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            if (bottomNavigation != null)
                              bottomNavigation!.animate(
                                effects: [
                                  const FadeEffect(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                    delay: Duration(milliseconds: 500),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
    }
  }
}
