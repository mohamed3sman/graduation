import 'package:flutter/material.dart';

import 'package:tawseel/core/constants.dart';

class TawseelFilledButton extends StatelessWidget {
  final void Function()? onTap;
  final Color? color;
  final String text;
  final double? width;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  const TawseelFilledButton({
    super.key,
    this.onTap,
    this.color = TColors.main,
    this.text = '',
    this.width,
    this.textColor,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(kBorderRadius6),
      child: InkWell(
        borderRadius: BorderRadius.circular(kBorderRadius6),
        onTap: onTap,
        child: Container(
          width: width ?? double.infinity,
          alignment: Alignment.center,
          margin: margin ?? const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TText.displayMedium.copyWith(color: textColor ?? TColors.whiteText),
          ),
        ),
      ),
    );
  }
}
