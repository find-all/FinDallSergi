import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Widget to show an empty list result.
///
/// This widget is used to show a message when the list of items is empty.
///
/// [message] is the message to be shown when the list of items is empty.
/// If this is null, the default message will be shown.
///
class ListEmptyResult extends StatelessWidget {
  final String? message;

  const ListEmptyResult({
    super.key,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaxWidthBox(
        maxWidth: const MediumBreakPoint().end,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Spacer(),
              SvgPicture.asset(
                context.isDark
                    ? 'assets/img/no_results_dark.svg'
                    : 'assets/img/no_results_light.svg',
                height: context.height * 0.2,
                width: context.width * 0.6,
              ),
              const SizedBox(height: 20),
              Text(
                message ?? context.loc.noResults,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
