import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/class/order.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/core/enums.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/notification_icon.dart';
import 'package:tawseel/ui/company/widgets/order_box.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      toolbarHeight: Get.height / 10,
      leading: TawseelContainer(
          isCircle: true, child: Image.asset('assets/images/logo.png')),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("كريسبي & كرانشي"),
          const SizedBox(height: kPadding4 / 2),
          Row(
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
          )
        ],
      ),
      actions: const [TawseelNotificationIcon()],
      body: ListView(
        children: [
          const SizedBox(height: kPadding16),
          TawseelContainer(
            margin: const EdgeInsets.all(kMargin16),
            padding: const EdgeInsets.all(kPadding12),
            enableShadow: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'استلم فلوسك\nوالتوصيل علينا',
                        style: TText.displayLarge.copyWith(height: 1.6),
                      ),
                      const SizedBox(height: kPadding16),
                      TawseelFilledButton(
                        text: 'اطلب دلوقتي',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: kPadding12),
                Image.asset(
                  'assets/images/homepage_man.png',
                  width: Get.width / 2,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: TColors.card.withAlpha(222),
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(kBorderRadius20)),
            ),
            padding: EdgeInsets.only(bottom: Get.height / 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kPadding16),
                Padding(
                  padding: const EdgeInsets.only(right: kPadding20),
                  child: Text(
                    'الطلبات الحالية',
                    style:
                        TText.displayLarge.copyWith(color: TColors.blackText),
                  ),
                ),
                TawseelOrderBox(
                  order: Order(OrderState.onTheWay, 25613,
                      'شارع 44 - السبتية - القاهرة', DateTime.now(), 40),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
