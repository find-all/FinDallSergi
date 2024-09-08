import 'package:flutter/material.dart';

class HistorySection extends StatelessWidget {
  final Widget historyList;

  final Widget clearAllButton;

  const HistorySection({
    super.key,
    required this.historyList,
    required this.clearAllButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        clearAllButton,
        Expanded(
          child: historyList,
        ),
      ],
    );
  }
}
