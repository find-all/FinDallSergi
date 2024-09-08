import 'package:fin_dall/core/widgets/section_title.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final String title;

  final Widget child;

  const SectionCard({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: title),
        Card(
          child: child,
        ),
      ],
    );
  }
}

class SectionNoCard extends StatelessWidget {
  final String title;

  final Widget child;
  const SectionNoCard({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: title),
        child,
      ],
    );
  }
}

class SectionCardCompact extends StatelessWidget {
  final String title;

  final EdgeInsets? titlePadding;

  final Widget? titleTrailing;

  final Widget child;

  const SectionCardCompact({
    super.key,
    required this.title,
    this.titleTrailing,
    this.titlePadding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitleCompact(
          title: title,
          padding: titlePadding,
          trailing: titleTrailing,
        ),
        Card(
          child: child,
        ),
      ],
    );
  }
}
