import 'package:flutter/material.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

Future<T?> showCustomBottomSheet<T>({
  required BuildContext context,
  required String title,
  required Widget body,
  String? acceptLabel,
  String? cancelLabel,
  void Function()? onAccept,
  void Function()? onCancel,
}) async {
  return await Navigator.push<T?>(
    context,
    ModalSheetRoute(
      swipeDismissible: true,
      builder: (context) => CustomBottomSheet(
        title: title,
        body: body,
        acceptLabel: acceptLabel,
        cancelLabel: cancelLabel,
        onAccept: onAccept,
        onCancel: onCancel,
      ),
    ),
  );
}

class CustomBottomSheet extends StatelessWidget {
  final String title;

  final Widget body;

  final String? acceptLabel;

  final String? cancelLabel;

  final void Function()? onAccept;

  final void Function()? onCancel;

  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.body,
    this.acceptLabel,
    this.cancelLabel,
    this.onAccept,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    final content = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Bottom sheet line to drop
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: context.theme.colorScheme.onSurface.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: context.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),

          body,
        ],
      ),
    );
    final bottomBar = StickyBottomBarVisibility(
      child: BottomAppBar(
        child: Row(
          children: [
            const Spacer(),
            if (cancelLabel != null && onCancel != null)
              ElevatedButtonTheme(
                data: ElevatedButtonThemeData(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(context.colorScheme.error),
                    foregroundColor:
                        WidgetStateProperty.all(context.colorScheme.onError),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: onCancel,
                  child: Text(
                    cancelLabel!,
                  ),
                ),
              ),
            const SizedBox(width: 20),
            if (acceptLabel != null && onAccept != null)
              ElevatedButton(
                onPressed: onAccept,
                child: Text(
                  acceptLabel!,
                ),
              ),
          ],
        ),
      ),
    );
    const sheetShape = ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
    );

    return SafeArea(
      bottom: false,
      child: MaxWidthBox(
        maxWidth: 600,
        child: DraggableSheet(
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: sheetShape,
            child: SheetContentScaffold(
              resizeBehavior: const ResizeScaffoldBehavior.avoidBottomInset(
                // Make the bottom bar visible when the keyboard is open.
                maintainBottomBar: true,
              ),
              body: FractionallySizedBox(
                widthFactor: 0.95,
                child: content,
              ),
              bottomBar: bottomBar,
            ),
          ),
        ),
      ),
    );
  }
}
