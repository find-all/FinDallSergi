import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class Breadcrumb extends StatelessWidget {
  final List<String> breadCrumbs;
  const Breadcrumb({
    super.key,
    required this.breadCrumbs,
  });

  @override
  Widget build(BuildContext context) {
    if (breadCrumbs.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: breadCrumbs.length + 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const SizedBox(
              width: 20,
            );
          }
          return Row(
            children: [
              Text(
                breadCrumbs[index - 1],
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.theme.colorScheme.primary,
                ),
              ),
              if (index - 1 != breadCrumbs.length - 1) ...[
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
                const SizedBox(
                  width: 5,
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
