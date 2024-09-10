import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Widget to show an error when fetching a list of items.
///
/// This widget is used to show an error message when fetching a list of items
///
/// [failure] is the error that occurred while fetching the list of items.
///
/// [onRetry] is the function to be called when the user wants to retry fetching the list of items.
/// If this is null, the retry button will not be shown.
///
class ListErrorResult extends StatelessWidget {
  final Failure failure;

  final void Function()? onRetry;

  const ListErrorResult({
    super.key,
    required this.failure,
    this.onRetry,
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
                    ? 'assets/img/common_error_dark.svg'
                    : 'assets/img/common_error_light.svg',
                height: context.height * 0.2,
                width: context.width * 0.6,
              ),
              const SizedBox(height: 20),
              Text(
                context.loc.oppsSomethingWentWrong,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Text(
                failure.getUIMessage(context: context),
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 20),
              if (onRetry != null)
                ElevatedButton(
                  onPressed: onRetry,
                  child: Text(context.loc.retry),
                ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
