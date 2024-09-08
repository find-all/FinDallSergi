import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

/// A custom widget that represents a selectable chip.
///
/// This widget takes three required parameters: `isSelected`, which indicates whether the chip is initially selected,
/// `builder`, which is a function that builds the content of the chip, and `onSelected`, which is a function that is called
/// when the chip is selected.
///
/// The selection state of the chip is maintained internally and can be changed by tapping the chip.
class CustomSelectChip extends StatefulWidget {
  /// Indicates whether the chip is initially selected.
  final bool isSelected;

  /// A function that is called when the chip is selected.
  ///
  /// This function receives a single boolean parameter that indicates the new selection state of the chip.
  final void Function(bool)? onSelected;

  /// A function that builds the content of the chip.
  ///
  /// This function receives a single boolean parameter that indicates the current selection state of the chip.
  final Widget Function(bool isSelected) builder;

  /// Selected color of the chip.
  ///
  /// If null, the primary color of the current theme is used.
  final Color? selectedColor;

  const CustomSelectChip({
    super.key,
    required this.isSelected,
    this.onSelected,
    required this.builder,
    this.selectedColor,
  });

  @override
  State<CustomSelectChip> createState() => _CustomSelectChipState();
}

class _CustomSelectChipState extends State<CustomSelectChip> {
  late bool _isSelected;

  @override
  void initState() {
    _isSelected = widget.isSelected;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CustomSelectChip oldWidget) {
    setState(() {
      _isSelected = widget.isSelected;
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    setState(() {
      _isSelected = widget.isSelected;
    });
    super.didChangeDependencies();
  }

  void _onSelected() {
    setState(() {
      _isSelected = !_isSelected;
    });
    widget.onSelected?.call(_isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: widget.onSelected != null ? _onSelected : null,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: _isSelected
              ? widget.selectedColor ?? context.theme.colorScheme.primary
              : Colors.transparent,
          borderRadius: BorderRadius.circular(
            30,
          ),
          border: Border.all(
            color: widget.selectedColor ?? context.theme.colorScheme.primary,
            width: 1,
          ),
        ),
        child: widget.builder(_isSelected),
      ),
    );
  }
}
