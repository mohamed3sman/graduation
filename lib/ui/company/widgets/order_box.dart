import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/class/order.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/core/extensions.dart';
import 'package:tawseel/ui/company/pages/order_details.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';

class TawseelOrderBox extends StatelessWidget {
  final Order order;
  const TawseelOrderBox({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return TawseelContainer(
      margin: const EdgeInsets.all(kMargin16),
      padding: const EdgeInsets.all(kPadding20),
      enableShadow: true,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'رقم الطلب #${order.orderNumber}',
                style: TText.displayLarge.copyWith(color: TColors.blackText),
              ),
              Text(
                order.state.toText,
                style: TText.displayLarge.copyWith(color: order.state.toColor),
              ),
            ],
          ),
          const SizedBox(height: kPadding12),
          const Divider(),
          const SizedBox(height: kPadding12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.location_pin, color: TColors.main),
              const SizedBox(width: kPadding8),
              Text(
                order.location,
                style: TText.displaySmall,
              ),
            ],
          ),
          const SizedBox(height: kPadding12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.timer),
              const SizedBox(width: kPadding8),
              Text(
                order.dateTime.toLocal().formatDate,
                style: TText.displaySmall,
              ),
            ],
          ),
          const SizedBox(height: kPadding24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'التكلفة:',
                style: TText.displayMedium,
              ),
              const SizedBox(width: kPadding8),
              Text(
                '${order.price} ج.م',
                style: TText.displayLarge,
              ),
            ],
          ),
          const SizedBox(height: kPadding24),
          TawseelFilledButton(
            onTap: () => Get.to(() => OrderDetails(
                  orderBox: this,
                )),
            color: TColors.bg,
            text: 'عرض التفاصيل',
            textColor: TColors.blackText,
            margin: const EdgeInsets.symmetric(
                horizontal: kMargin12, vertical: kMargin20),
          )
        ],
      ),
    );
  }
}
