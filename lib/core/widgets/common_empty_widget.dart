import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommonEmptyWidget extends StatelessWidget {
  final String? message;

  final EdgeInsetsGeometry? padding;

  const CommonEmptyWidget({
    super.key,
    this.message,
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
            Assets.commonEmpty(
              context,
            ),
            height: MediaQuery.sizeOf(context).width * 0.7,
            width: MediaQuery.sizeOf(context).width * 0.7,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            message ?? context.loc.noResults,
            style: context.textTheme.titleMedium,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
