import 'package:flutter/material.dart';
import 'package:shoe_quest/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 1)
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 1)
  );

}
