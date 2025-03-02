import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
    labelStyle: const TextStyle(color: Colors.black),
  );


  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
    labelStyle: const TextStyle(color: Colors.white),
  );
}
