import 'package:shoe_quest/utils/theme/custom_themes/appbar_theme.dart';
import 'package:shoe_quest/utils/theme/custom_themes/chip_theme.dart';
import 'package:shoe_quest/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:shoe_quest/utils/theme/custom_themes/outlied_button_theme.dart';
import 'package:shoe_quest/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:shoe_quest/utils/theme/custom_themes/text_field_theme.dart';
import 'package:shoe_quest/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shoe_quest/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  // Light mode
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBaraTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetThemeData.lightBottomSheetTheme,
    outlinedButtonTheme: TOutliedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonThemeData.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBaraTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetThemeData.darkBottomSheetTheme,
    outlinedButtonTheme: TOutliedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonThemeData.darkElevatedButtonTheme,
  );
}
