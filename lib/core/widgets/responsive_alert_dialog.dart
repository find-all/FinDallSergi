import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<T?> showResponsiveAlertDialog<T>({
  required BuildContext context,
  required String title,
  required String content,
  void Function()? onConfirm,
  void Function()? onCancel,
  String? confirmLabel,
  String? cancelLabel,
}) {
  return showDialog<T?>(
    context: context,
    useSafeArea: true,
    builder: (context) {
      return ResponsiveAlertDialog(
        title: title,
        content: content,
        onConfirm: onConfirm,
        onCancel: onCancel,
        confirmLabel: confirmLabel,
        cancelLabel: cancelLabel,
      );
    },
  );
}

class ResponsiveAlertDialog extends StatelessWidget {
  final String title;

  final String content;

  final String? confirmLabel;

  final String? cancelLabel;

  final void Function()? onConfirm;

  final void Function()? onCancel;

  const ResponsiveAlertDialog({
    super.key,
    required this.title,
    required this.content,
    this.onConfirm,
    this.onCancel,
    this.confirmLabel,
    this.cancelLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(vertical: context.height * 0.2),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      clipBehavior: Clip.antiAlias,
      child: MaxWidthBox(
        maxWidth: 400,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                content,
                style: context.theme.textTheme.bodyMedium?.copyWith(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed:
                        onCancel ?? () => Navigator.of(context).pop(false),
                    child: Text(
                      cancelLabel ?? context.loc.no,
                      style: context.theme.textTheme.bodyMedium?.copyWith(
                        color: context.theme.colorScheme.error,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed:
                        onConfirm ?? () => Navigator.of(context).pop(true),
                    child: Text(
                      confirmLabel ?? context.loc.yes,
                      style: context.theme.textTheme.bodyMedium?.copyWith(
                        color: context.theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
