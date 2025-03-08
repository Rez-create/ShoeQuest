import 'package:flutter/material.dart';
import 'package:shoe_quest/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.margin,
    this.padding = 0,
    this.radius = 400,
    this.backgroundColor = TColors.white,
  });

  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Color? backgroundColor;
  final Widget? child;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
