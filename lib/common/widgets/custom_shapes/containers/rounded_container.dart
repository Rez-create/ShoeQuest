import 'package:flutter/material.dart';
import 'package:shoe_quest/utils/constants/colors.dart';
import 'package:shoe_quest/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
    this.showBoarder = false,
  });

  final double? width;
  final double? height;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;
  final bool showBoarder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBoarder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
