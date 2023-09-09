import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/controllers/current_orders.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/core/enums.dart';
import 'package:tawseel/ui/company/widgets/current_order_box.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/notification_icon.dart';
import 'package:tawseel/ui/company/widgets/order_box.dart';

class DriverOrders extends StatelessWidget {
  const DriverOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      toolbarHeight: Get.height / 10,
      leading: TawseelContainer(
          isCircle: true, child: Image.asset('assets/images/pfp.png')),
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
      body: ListView(
        children: [
          const SizedBox(height: kPadding16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(
              () {
                final bool isFirstSelected =
                    CurrentOrders.inst.currentFilteredOrders ==
                        OrderState.values;
                final bool isSecondSelected =
                    CurrentOrders.inst.currentFilteredOrders.toList().length ==
                            1 &&
                        CurrentOrders.inst.currentFilteredOrders
                            .toList()
                            .contains(OrderState.onTheWay);
                final bool isThirdSelected =
                    CurrentOrders.inst.currentFilteredOrders.toList().length ==
                            1 &&
                        CurrentOrders.inst.currentFilteredOrders
                            .toList()
                            .contains(OrderState.delivered);
                return Row(
                  children: [
                    const SizedBox(width: kPadding16),
                    TawseelFilledButton(
                      width: Get.width / 3,
                      text: 'كل الطلبات',
                      color: isFirstSelected ? TColors.main : TColors.handle,
                      textColor: isFirstSelected ? null : TColors.blackText,
                      onTap: () => CurrentOrders
                          .inst.currentFilteredOrders.value = OrderState.values,
                    ),
                    const SizedBox(width: kPadding16),
                    TawseelFilledButton(
                      width: Get.width / 3,
                      text: 'قيد التوصيل',
                      color: isSecondSelected ? TColors.main : TColors.handle,
                      textColor: isSecondSelected ? null : TColors.blackText,
                      onTap: () => CurrentOrders.inst.currentFilteredOrders
                          .value = [OrderState.onTheWay],
                    ),
                    const SizedBox(width: kPadding16),
                    TawseelFilledButton(
                      width: Get.width / 3,
                      text: 'الطلبات المكتملة',
                      color: isThirdSelected ? TColors.main : TColors.handle,
                      textColor: isThirdSelected ? null : TColors.blackText,
                      onTap: () => CurrentOrders.inst.currentFilteredOrders
                          .value = [OrderState.delivered],
                    ),
                    const SizedBox(width: kPadding16),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: kPadding16),
          Container(
            decoration: BoxDecoration(
              color: TColors.card.withAlpha(222),
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(kBorderRadius20)),
            ),
            padding: EdgeInsets.only(bottom: Get.height / 4),
            child: Obx(
              () => Column(
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
                  const CurrentOrderBox(),
                  ...CurrentOrders.inst.currentAllOrders
                      .asMap()
                      .entries
                      .map((e) => CurrentOrders.inst.currentFilteredOrders
                              .contains(e.value.state)
                          ? TawseelOrderBox(
                              order: e.value,
                            )
                          : const SizedBox())
                      .toList(),
                  // TawseelOrderBox(
                  //   order: Order(OrderState.onTheWay, 25613, 'شارع 44 - السبتية - القاهرة', DateTime.now(), 40),
                  // ),
                  // TawseelOrderBox(
                  //   order: Order(OrderState.delivered, 25213, 'شارع 44 - السبتية - القاهرة', DateTime.now(), 32),
                  // ),
                  // TawseelOrderBox(
                  //   order: Order(OrderState.canceled, 25213, 'شارع 44 - السبتية - القاهرة', DateTime.now(), 26),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
