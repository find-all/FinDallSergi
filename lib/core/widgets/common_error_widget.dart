import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// [CommonErrorWidget] is a widget to display the error
///
///
/// [message] is the message to be displayed. If not specified, the message of [failure] is displayed
///
/// [failure] is the failure to be displayed
///
/// [onRetry] is the function to be called when the user clicks on the retry button
/// If not specified, the retry button is not displayed
///
/// [padding] is the padding of the widget. By default, it is 20 all
///
class CommonErrorWidget extends StatelessWidget {
  final String? message;

  final Failure failure;

  final void Function()? onRetry;

  final EdgeInsetsGeometry? padding;

  const CommonErrorWidget({
    super.key,
    this.message,
    required this.failure,
    this.onRetry,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(
            Assets.commonError(
              context,
            ),
            height: MediaQuery.sizeOf(context).width * 0.7,
            width: MediaQuery.sizeOf(context).width * 0.7,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 40),
          Text(
            message ?? failure.getUIMessage(context: context),
            style: context.textTheme.titleMedium,
          ),
          const SizedBox(height: 40),
          if (onRetry != null)
            //ControllerStateButton(
            //  label: context.loc.retry,
            //  onPressed: onRetry,
            //  state: const Initial(),
            //),
            const Spacer(),
        ],
      ),
    );
  }
}
