import 'package:flutter/material.dart';

class AccountGrid extends StatelessWidget {
  final List<Widget> accountOptions;
  const AccountGrid({
    super.key,
    required this.accountOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: accountOptions[0],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: accountOptions[2],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: accountOptions[1],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: accountOptions[3],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
