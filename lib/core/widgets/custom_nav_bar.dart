import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomVerticalNavBar extends StatefulWidget {
  final List<CustomVerticalNavBarItem> items;

  final int selectedIndex;

  final void Function(int) onItemSelected;

  const CustomVerticalNavBar({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  CustomVerticalNavBarState createState() => CustomVerticalNavBarState();
}

class CustomVerticalNavBarState extends State<CustomVerticalNavBar> {
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.items
          .asMap()
          .entries
          .map(
            (entry) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: entry.value,
            ),
          )
          .toList(),
    );
  }
}

class CustomVerticalNavBarItem extends StatelessWidget {
  final int index;

  final String label;

  final IconData icon;

  final bool isSelected;

  final void Function() onTap;

  CustomVerticalNavBarItem({
    super.key,
    required this.index,
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  final BorderRadius _borderRadius = BorderRadius.circular(30);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: _borderRadius,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: _borderRadius,
        ),
        color: isSelected
            ? context.theme.colorScheme.primary.withOpacity(0.3)
            : context.theme.colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: isSelected ? context.theme.colorScheme.primary : null,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    label,
                    style: isSelected
                        ? context.textTheme.bodyLarge?.copyWith(
                            color: context.theme.colorScheme.primary,
                          )
                        : context.textTheme.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
