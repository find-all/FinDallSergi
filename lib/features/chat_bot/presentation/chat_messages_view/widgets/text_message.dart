import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  final String text;

  const TextMessage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
    );
  }
}
