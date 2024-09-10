
/*
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:flutter/material.dart';

class ControllerStateButton<T> extends StatelessWidget {
  /// The state of the controller
  ///
  final ControllerState<T> state;

  /// On pressed
  ///
  /// The function to call when the button is pressed
  final void Function()? onPressed;

  /// Label
  ///
  /// The text to show when the button is enabled
  final String label;

  /// Icon
  ///
  /// The icon to show when the button is enabled
  final IconData? icon;

  /// Retry mode
  ///
  /// If true, the button will be enabled only if the state is Fail
  final bool retryMode;

  /// Idle color
  ///
  /// The color of the button when the state is Idle
  final Color? idleColor;

  /// Loading color
  ///
  /// The color of the button when the state is Loading
  final Color? loadingColor;

  /// Error color
  ///
  /// The color of the button when the state is Fail
  final Color? errorColor;

  /// Idle text color
  ///
  /// The color of the text when the state is Idle
  final Color? idleTextColor;

  /// Loading text color
  ///
  /// The color of the text when the state is Loading
  final Color? loadingTextColor;

  /// Error text color
  ///
  /// The color of the text when the state is Fail
  final Color? errorTextColor;

  const ControllerStateButton({
    super.key,
    required this.state,
    this.onPressed,
    required this.label,
    this.retryMode = false,
    this.idleColor,
    this.loadingColor,
    this.errorColor,
    this.idleTextColor,
    this.loadingTextColor,
    this.errorTextColor,
  }) : icon = null;

  const ControllerStateButton.icon({
    super.key,
    required this.state,
    this.onPressed,
    required this.label,
    this.retryMode = false,
    this.idleColor,
    this.loadingColor,
    this.errorColor,
    this.idleTextColor,
    this.loadingTextColor,
    this.errorTextColor,
    required this.icon,
  });

  // The color of the button
  Color _buttonColor({required BuildContext context}) => switch (state) {
        // If the state is loading, the color is the secondary color. No disable mode on loading
        Loading() => loadingColor ?? Theme.of(context).colorScheme.primary,
        // If the state is Fail, the color is the error color. If retryMode is true, the button is enabled
        // only if the state is Fail
        Fail() when onPressed != null && retryMode =>
          errorColor ?? Theme.of(context).colorScheme.error,
        // If the state is Loaded or intial  and onPressed is not null, the color is the primary color.
        _ when onPressed != null =>
          idleColor ?? Theme.of(context).colorScheme.primary,
        // If the state is not loading and no onPressed provided, the color is the disabled color
        _ => Theme.of(context).colorScheme.primary.withOpacity(0.5),
      };

  // The color of the text and icon and loading indicator
  Color _buttonTextColor({required BuildContext context}) => switch (state) {
        // If the state is loading, the color is the secondary color. No disable mode on loading
        Loading() =>
          loadingTextColor ?? Theme.of(context).colorScheme.onPrimary,
        // If the state is Fail, the color is the error color. If retryMode is true, the button is enabled
        // only if the state is Fail
        Fail() when onPressed != null && retryMode =>
          errorTextColor ?? Theme.of(context).colorScheme.onError,
        // If the state is Loaded or intial  and onPressed is not null, the color is the primary color.
        _ when onPressed != null =>
          idleTextColor ?? Theme.of(context).colorScheme.onPrimary,
        // If the state is not loading and no onPressed provided, the color is the disabled color
        _ => Theme.of(context).colorScheme.onPrimary,
      };

  // The label of the button
  Text _buildButtonLabel(
          {required BuildContext context, required String text}) =>
      Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: _buttonTextColor(context: context),
            ),
      );

  // The label of the button with an icon
  Widget _buildButtonLabelWithIcon({
    required BuildContext context,
    required String text,
    required IconData icon,
  }) =>
      FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20.sp,
              color: _buttonTextColor(context: context),
            ),
            SizedBox(
              width: 10.w,
            ),
            _buildButtonLabel(context: context, text: text)
          ],
        ),
      );

  BorderRadius get _buttonBorderRadius => switch (state) {
        Loading() => BorderRadius.all(Radius.circular(50.r)),
        _ => BorderRadius.circular(30).r,
      };

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: _buttonBorderRadius,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 40,
          maxHeight: 40,
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: state is Loading ? 40.h : MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: _buttonColor(context: context),
            borderRadius: _buttonBorderRadius,
          ),
          child: Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              // Change the border radius if the state is loading to be a circle
              borderRadius: _buttonBorderRadius,
            ),
            child: InkWell(
              // On loading the button is not clickable
              onTap: switch (state) {
                Loading() => null,
                _ => onPressed,
              },
              // Change the border radius if the state is loading to be a circle
              borderRadius: _buttonBorderRadius,
              child: Padding(
                padding: switch (state) {
                  // If the state is loading, the padding is 5 on all sides
                  Loading() => const EdgeInsets.all(5).r,
                  // If the state is Fail, the padding is 5 on all sides
                  _ => EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 5,
                    ),
                },
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) => ScaleTransition(
                    scale: animation,
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  ),
                  child: switch (state) {
                    Loading() => Center(
                        child: CircularProgressIndicator(
                          color: _buttonTextColor(context: context),
                        ),
                      ),
                    // If the state is Fail and retryMode is true, show an icon and the label
                    Fail() when retryMode => _buildButtonLabelWithIcon(
                        context: context,
                        text: context.loc.retry,
                        icon: Icons.error,
                      ),
                    _ => icon == null
                        ? Center(
                            child: _buildButtonLabel(
                              context: context,
                              text: label,
                            ),
                          )
                        : _buildButtonLabelWithIcon(
                            context: context, text: label, icon: icon!),
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/