import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DetailScaffold extends StatelessWidget {
  final String? title;
  final void Function()? onBackPressed;

  final Widget body;

  const DetailScaffold({
    super.key,
    this.title,
    this.onBackPressed,
    required this.body,
  }) : assert((title != null && onBackPressed != null) ||
            (title == null && onBackPressed == null));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.primaryContainer,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            color: context.theme.colorScheme.surface,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    if (onBackPressed != null && title != null) ...[
                      Row(
                        children: [
                          // Custom back button
                          Material(
                            color: context.theme.colorScheme.onPrimaryContainer,
                            shape: const CircleBorder(),
                            child: InkWell(
                              onTap: onBackPressed,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: context
                                      .theme.colorScheme.primaryContainer,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          // Page title
                          Expanded(
                            child: Text(
                              title!,
                              style: context.theme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: MaxWidthBox(
                          maxWidth: const MediumBreakPoint().end,
                          child: body,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
