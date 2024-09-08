import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<T?> showResponsivePageDialog<T>({
  required BuildContext context,
  required Widget child,
  Color? backgroundColor,
}) {
  return showDialog<T?>(
    context: context,
    useSafeArea: false,
    builder: (context) {
      return ResponsivePageDialog(
          backgroundColor: backgroundColor, child: child);
    },
  );
}

class ResponsivePageDialog extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;

  const ResponsivePageDialog({
    super.key,
    required this.child,
    this.backgroundColor,
  });

  @override
  State<ResponsivePageDialog> createState() => _ResponsivePageDialogState();
}

class _ResponsivePageDialogState extends State<ResponsivePageDialog> {
  late Widget _child;

  @override
  void initState() {
    _child = widget.child;
    super.initState();
  }

  Widget _responsiveChild(double width) {
    return MaxWidthBox(
      maxWidth: width < 600 ? null : 600,
      child: _child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = context.width;

    final shape = width < 600
        ? const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          )
        : const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          );

    final insetPadding = width < 600
        ? EdgeInsets.zero
        : EdgeInsets.symmetric(vertical: context.height * 0.2);

    final clipBehavior = width < 600 ? Clip.none : Clip.antiAlias;

    return Dialog(
      shape: shape,
      clipBehavior: clipBehavior,
      insetPadding: insetPadding,
      backgroundColor: widget.backgroundColor,
      child: _responsiveChild(width),
    );
  }
}
