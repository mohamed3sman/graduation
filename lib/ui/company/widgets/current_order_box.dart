import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';

class CurrentOrderBox extends StatelessWidget {
  const CurrentOrderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TawseelContainer(
      margin: const EdgeInsets.all(kPadding16),
      padding: const EdgeInsets.all(kPadding16),
      enableShadow: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "الطلبات الحالية",
          //   style: TText.titleLarge.copyWith(color: TColors.blackText),
          // ),
          TawseelContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TawseelContainer(
                  isCircle: true,
                  child: Image.asset('assets/images/logo.png',
                      fit: BoxFit.cover, width: 30),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TawseelContainer(child: Text("كريسبي & كرانشي")),
                    const SizedBox(height: kPadding4 / 2),
                    TawseelContainer(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: TColors.blackText,
                            size: 16.0,
                          ),
                          Text(
                            'شارع 10 - باب الشعرية - القاهرة',
                            style: TText.bodyMedium,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Text(
                  "كاش",
                  style: TText.titleMedium.copyWith(color: TColors.main),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius8),
              border: Border.all(color: TColors.main),
            ),
            child: const TawseelFilledButton(
              text: "عرض التفاصيل",
              textColor: TColors.main,
              color: TColors.card,
            ),
          ),
          const SizedBox(
            height: kPadding8,
          ),
          const Divider(),
          const SizedBox(
            height: kPadding8,
          ),
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: TColors.main,
              ),
              Text("شارع 44 - السبتية - القاهرة")
            ],
          ),
          Row(
            children: [
              const Icon(Icons.timelapse_rounded),
              Text(
                "11:00,20/10/2021ص",
                style: TText.displaySmall,
              )
            ],
          ),
          const SizedBox(
            height: kPadding16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TawseelFilledButton(
                textColor: TColors.card,
                text: "انهاء الطلب",
                width: Get.width / 3,
              ),
              TawseelFilledButton(
                color: TColors.handle,
                textColor: TColors.blackText,
                text: "الغاء الطلب",
                width: Get.width / 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
