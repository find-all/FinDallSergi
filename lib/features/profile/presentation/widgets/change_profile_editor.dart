// Importing necessary packages

import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

/// [ChangeProfileEditor] is a widget that displays the change profile editor.
///
/// Use this wigted to build editors to handle profile changes.
///
///
class ChangeProfileEditor extends StatelessWidget {
  /// Title of the editor
  final String title;

  /// Description of the editor
  final String description;

  /// List of widgets to be displayed in the editor. Normally, these are form fields.
  final List<Widget> children;

  /// Function to be executed when submitted
  final void Function()? onSubmitted;

  /// Function to be executed when cancelled
  final void Function()? onCanceled;

  /// Text for the update button. Be default, it is "Update".
  final String? updateButtonText;

  // Constructor for the widget
  const ChangeProfileEditor({
    super.key,
    required this.title,
    required this.description,
    required this.children,
    this.onSubmitted,
    this.onCanceled,
    this.updateButtonText,
  });

  // Building the widget
  @override
  Widget build(BuildContext context) {
    // Body of the widget
    final body = SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          // Title of the editor
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: context.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          // Description of the editor
          Text(
            description,
            style: context.textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          // Displaying the list of widgets
          ...children,
        ],
      ),
    );

    // Bottom bar of the widget
    final bottomBar = StickyBottomBarVisibility(
      child: BottomAppBar(
        child: Row(
          children: [
            const Spacer(),
            // Cancel button of the editor
            ChangeProfileEditorCancelButton(
              onCanceled: onCanceled,
            ),
            const SizedBox(width: 20),
            // Submit button of the editor
            ChangeProfileEditorSubmitButton(
              updateButtonText: updateButtonText,
              onSubmitted: onSubmitted,
            ),
          ],
        ),
      ),
    );

    // Shape of the sheet
    const sheetShape = ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
    );

    // Returning the final widget
    return MaxWidthBox(
      maxWidth: const MediumBreakPoint().end,
      child: SafeArea(
        bottom: false,
        child: ScrollableSheet(
          keyboardDismissBehavior:
              const SheetKeyboardDismissBehavior.onDragDown(
            isContentScrollAware: true,
          ),
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
                child: body,
              ),
              bottomBar: bottomBar,
            ),
          ),
        ),
      ),
    );
  }
}

// A stateless widget for the submit button
class ChangeProfileEditorSubmitButton extends StatelessWidget {
  // Function to be executed when submitted
  final void Function()? onSubmitted;
  // Text for the update button
  final String? updateButtonText;

  // Constructor for the widget
  const ChangeProfileEditorSubmitButton({
    super.key,
    required this.onSubmitted,
    this.updateButtonText,
  });

  // Building the widget
  @override
  Widget build(BuildContext context) {
    // Returning the elevated button
    return ElevatedButton(
      onPressed: onSubmitted,
      child: Text(updateButtonText ?? context.loc.update),
    );
  }
}

// A stateless widget for the cancel button
class ChangeProfileEditorCancelButton extends StatelessWidget {
  // Function to be executed when cancelled
  final void Function()? onCanceled;

  // Constructor for the widget
  const ChangeProfileEditorCancelButton({
    super.key,
    this.onCanceled,
  });

  // Building the widget
  @override
  Widget build(BuildContext context) {
    // Returning the elevated button with theme
    return ElevatedButtonTheme(
      data: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            context.colorScheme.error.withOpacity(
              0.7,
            ),
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          onCanceled?.call();
          Navigator.pop(context);
        },
        child: Text(
          context.loc.cancel,
          style: TextStyle(
            color: context.colorScheme.onError,
          ),
        ),
      ),
    );
  }
}
