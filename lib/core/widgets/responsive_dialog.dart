import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<T?> showResponsiveDialog<T>({
  required BuildContext context,
  required Widget child,
}) {
  return showDialog<T?>(
    context: context,
    useSafeArea: true,
    builder: (context) {
      return ResponsiveDialog(child: child);
    },
  );
}

class ResponsiveDialog extends StatelessWidget {
  final Widget child;

  const ResponsiveDialog({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      clipBehavior: Clip.antiAlias,
      insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: MaxWidthBox(
        maxWidth: 600,
        child: child,
      ),
    );
  }
}
