import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

/// Returns a Text with the [title] and a [titleLarge] style
///
/// Has a default padding of 10 horizontal and 20 vertical
///
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Text(
        title,
        style: context.textTheme.titleLarge,
      ),
    );
  }
}

class SectionTitleCompact extends StatelessWidget {
  final String title;

  final Widget? trailing;

  final EdgeInsets? padding;

  const SectionTitleCompact({
    super.key,
    required this.title,
    this.trailing,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleMedium,
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
