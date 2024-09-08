import 'package:flutter/material.dart';

final _border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide.none,
);

final inputDecorationTheme = InputDecorationTheme(
  floatingLabelBehavior: FloatingLabelBehavior.never,
  fillColor: Colors.white,
  filled: true,
  border: _border,
  enabledBorder: _border,
  errorBorder: _border,
  focusedBorder: _border,
  disabledBorder: _border,
  focusedErrorBorder: _border,
  constraints: const BoxConstraints(
    minHeight: 70,
    maxHeight: 70,
  ),
  contentPadding: const EdgeInsets.symmetric(
    vertical: 0,
    horizontal: 20,
  ),
  errorMaxLines: 1,
  helperMaxLines: 1,
);
