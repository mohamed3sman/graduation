import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/checkbox_list_tile.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

void showChooseLocationBottomSheet() {
  Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding16),
      child: ListView(
        // mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: kPadding12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 40.0,
                child: IconButton(
                  onPressed: () => Get.close(1),
                  icon: const Icon(Icons.close),
                ),
              ),
              Text(
                "اختر العنوان",
                style: TText.titleMedium,
              ),
              const SizedBox(
                width: 40.0,
              )
            ],
          ),
          const SizedBox(
            height: kPadding16,
          ),
          const TawseelCheckboxListTile(
            title: "محيط الهرم - الجيزة",
            active: false,
            price: 20,
          ),
          const SizedBox(height: kPadding12),
          const TawseelCheckboxListTile(
            title: "محيط وسط البلد - الفاهرة",
            active: true,
            price: 20,
          ),
          const SizedBox(height: kPadding12),
          const TawseelCheckboxListTile(
            title: "محيد الدقي - الجيزة",
            active: false,
            price: 20,
          ),
          const SizedBox(height: kPadding12),
          const TawseelCheckboxListTile(
            title: "محيد كورنيش النيل - الجيزة",
            active: false,
            price: 20,
          ),
          const SizedBox(height: kPadding24),
          Text(
            'مكان اخر',
            style: TText.displayMedium,
          ),
          const TawseelTextField(
            hintText: 'ادخل العنوان',
          ),
          const TawseelTextField(
            hintText: 'تكلفة التوصيل',
          ),
          const SizedBox(height: kPadding12),
          const TawseelFilledButton(
            text: 'إرسال',
          ),
          const SizedBox(height: kPadding24),
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
