import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import '../widgets/default_container.dart';
import '../widgets/filled_button.dart';
import '../widgets/notification_icon.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      leading: TawseelContainer(
          isCircle: true, child: Image.asset('assets/images/person.png')),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("محمد شادى"),
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
      body: Padding(
        padding: const EdgeInsets.all(kPadding12),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TawseelFilledButton(
                    text: "كل الطلبات",
                    width: Get.width / 3,
                  ),
                  TawseelFilledButton(
                    text: "كل الطلبات",
                    width: Get.width / 3,
                  ),
                  TawseelFilledButton(
                    text: "كل الطلبات",
                    width: Get.width / 3,
                  ),
                ],
              ),
            ),
            Text(
              "الطلبات الحالية",
              style: TText.titleLarge.copyWith(color: TColors.blackText),
            ),
          ],
        ),
      ),
    );
  }
}
