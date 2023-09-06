import 'package:flutter/material.dart';

import 'package:tawseel/core/constants.dart';

class TawseelCheckboxListTile extends StatelessWidget {
  final String title;
  final bool active;
  final double price;
  const TawseelCheckboxListTile({
    super.key,
    required this.title,
    required this.active,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: kMargin4 / 2,
      tileColor: active ? TColors.main : TColors.card,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: TColors.handle, width: 1.5),
        borderRadius: BorderRadius.circular(kBorderRadius8),
      ),
      leading: Container(
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          border: Border.all(color: TColors.main, width: 1.5),
          shape: BoxShape.circle,
          color: TColors.card,
        ),
        child: Icon(
          Icons.check_rounded,
          color: active ? null : TColors.card,
        ),
      ),
      title: Text(
        title,
        style: TText.displaySmall.copyWith(color: active ? TColors.whiteText : TColors.blackText),
      ),
      trailing: Text(
        "$price ج.م",
        style: TText.displaySmall.copyWith(color: active ? TColors.whiteText : TColors.blackText),
      ),
    );
  }
}
