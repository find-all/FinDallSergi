import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/responsive_alert_dialog.dart';
import 'package:flutter/material.dart';

/// A widget that displays a button to clear all history entries.
///
/// This widget shows a red button with a delete icon and "Clear All" text.
/// When tapped, it displays a confirmation dialog before executing the
/// clear action.
class HistoryClearAllButton extends StatelessWidget {
  /// The function to be called when the clear action is confirmed.
  final void Function()? onPressed;

  /// Creates a [HistoryClearAllButton] widget.
  ///
  /// The [onPressed] parameter is required and specifies the action
  /// to be performed when the clear action is confirmed.
  const HistoryClearAllButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Set the background color to a semi-transparent error color
      color: context.getResponsiveValue<Color?>(
        compact: context.colorScheme.error.withOpacity(0.7),
        defaultValue: context.colorScheme.surface,
      ),

      child: InkWell(
        // Handle the tap gesture
        onTap: onPressed != null
            ? () async {
                // Show a confirmation dialog
                final result = await showResponsiveAlertDialog(
                  context: context,
                  title: context.loc.historyClearDialogTitle,
                  content: context.loc.historyClearDialogMessage,
                );

                // If the user confirms, execute the clear action
                if (result) {
                  onPressed!.call();
                }
              }
            : null,
        child: Padding(
          // Add padding around the button content
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Row(
            children: [
              const Spacer(), // Push content to the center
              // Display the delete icon
              Icon(
                Icons.delete_forever_outlined,
                color: context.getResponsiveValue<Color?>(
                  compact: context.colorScheme.onError,
                  defaultValue: context.colorScheme.error,
                ),
                size: 16,
              ),
              const SizedBox(width: 10), // Add space between icon and text
              // Display the "Clear All" text
              Text(
                context.loc.clearAll,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.getResponsiveValue<Color?>(
                    compact: context.colorScheme.onError,
                    defaultValue: context.colorScheme.error,
                  ),
                ),
              ),
              const Spacer(), // Push content to the center
            ],
          ),
        ),
      ),
    );
  }
}
