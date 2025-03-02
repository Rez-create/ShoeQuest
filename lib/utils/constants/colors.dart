// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class TColors{
  TColors._();

  // Basic Colors
  static const Color primary = Color(0xFF1E88E5);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // Gradient colors
  static const Gradient linearGradent = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, 0.707),
    colors: [
      Color(0xffff9a9e), 
      Color(0xfffad0c4),
      Color(0xfffad0c4)
    ],

  );

  // Text Colors
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static Color darkContainer = Color(0xFF272727).withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDanger = Color(0xFFC4c4c4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFE5E5E5);
  static const Color borderSecondary = Color(0xFFE0E0E0);

  // Error and Validatin colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Colors
  static const Color black = Color(0xFF232323);
  static const Color darkergrey = Color(0xFF333333);
  static const Color darkgrey = Color(0xFF4F4F4F);
  static const Color grey = Color(0xFF828282);
  static const Color lightgrey = Color(0xFFBDBDBD);
  static const Color softGrey = Color(0xFFE0E0E0);
  static const Color white = Color(0xFFFFFFFF);


}