import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';

class TawseelContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final bool isCircle;
  final bool enableShadow;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  const TawseelContainer({super.key, required this.child, this.width, this.height, this.isCircle = false, this.margin, this.padding, this.enableShadow = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.all(kPadding4),
      margin: margin,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: TColors.card,
        boxShadow: enableShadow
            ? [
                BoxShadow(
                  color: Get.theme.shadowColor,
                  spreadRadius: 2,
                  blurRadius: 12,
                  offset: const Offset(0.0, kMargin4),
                ),
              ]
            : null,
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircle ? null : BorderRadius.circular(kBorderRadius8),
      ),
      child: child,
    );
  }
}
