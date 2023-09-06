import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';

void showAddedProductSuccessfullyBottomSheet() {
  Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: kPadding12,
          ),
          Container(
            width: Get.width / 6,
            height: 4.0,
            decoration: BoxDecoration(
              color: TColors.handle,
              borderRadius: BorderRadius.circular(kBorderRadius12),
            ),
          ),
          const SizedBox(
            height: kPadding16,
          ),
          Container(
            width: Get.width / 5,
            height: Get.width / 5,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: TColors.success,
            ),
            child: Icon(Icons.check_rounded,
                size: Get.width / 7, color: TColors.whiteText),
          ),
          const SizedBox(
            height: kPadding12,
          ),
          Text(
            "تم الإرسال بنجاح",
            style: TText.titleMedium,
          ),
          const SizedBox(
            height: kPadding12,
          ),
          Text(
            "تم إرسال طلبك بنجاح، يرجى انتظار الموافقة",
            style: TText.displayMedium,
          ),
          const SizedBox(
            height: kPadding24,
          ),
          TawseelFilledButton(
            color: TColors.bg,
            text: 'حسنًا، فهمت',
            textColor: TText.displayMedium.color,
            onTap: () => Get.close(1),
          ),
          const SizedBox(
            height: kPadding24,
          ),
        ],
      ),
    ),
    backgroundColor: TColors.card,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(kBorderRadius24),
      ),
    ),
  );
}
