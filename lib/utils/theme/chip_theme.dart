import 'package:flutter/material.dart';

class DChipTheme {
  DChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    selectedColor: Colors.blue,
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.black),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    selectedColor: Colors.blue,
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );
}
