import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/controllers/current_orders.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/bottomsheets/added_product.dart';
import 'package:tawseel/ui/company/bottomsheets/choose_location.dart';
import 'package:tawseel/ui/company/widgets/default_back_button.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/notification_icon.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

class NewOrderPage extends StatelessWidget {
  const NewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      leading: const TawseelBackButton(),
      title: Text(
        "طلب جد يد",
        style: TText.headlineMedium,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const TawseelNotificationIcon(),
        ),
      ],
      body: Obx(
        () => ListView(
          children: [
            Container(
              color: TColors.card,
              padding: const EdgeInsets.all(kPadding16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "المنـتجات",
                        style: TText.displayLarge,
                      ),
                      TextButton(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.add,
                              color: TColors.mainLight,
                            ),
                            const SizedBox(
                              width: kPadding4,
                            ),
                            Text(
                              "إضافة منتح اخر",
                              style: TText.displaySmall.copyWith(
                                color: TColors.mainLight,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          CurrentOrders.inst.newOrderNameController.value
                              .clear();
                          CurrentOrders.inst.newOrderPriceController.value
                              .clear();
                          CurrentOrders.inst.showNewOrderContainer.value = true;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: kPadding16),
                  ...CurrentOrders.inst.newOrders.entries
                      .map(
                        (e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.key,
                              style: TText.displayLarge,
                            ),
                            const SizedBox(height: kPadding16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "السعر:",
                                  style: TText.displayMedium,
                                ),
                                Text(
                                  "${e.value} ج.م",
                                  style: TText.displayMedium,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.delete,
                                        color: TColors.error,
                                      ),
                                      const SizedBox(
                                        width: kPadding4,
                                      ),
                                      Text(
                                        "حذف",
                                        style: TText.displaySmall.copyWith(
                                          color: TColors.error,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () => CurrentOrders.inst.newOrders
                                      .remove(e.key),
                                ),
                                TextButton(
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.edit,
                                        color: TColors.normal,
                                      ),
                                      const SizedBox(
                                        width: kPadding4,
                                      ),
                                      Text(
                                        "تعديل",
                                        style: TText.displaySmall.copyWith(
                                          color: TColors.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    CurrentOrders.inst.showNewOrderContainer
                                        .value = true;
                                    CurrentOrders.inst.newOrderNameController
                                        .value.text = e.key;
                                    CurrentOrders.inst.newOrderPriceController
                                        .value.text = e.value.toString();
                                  },
                                ),
                              ],
                            ),
                            const Divider(
                              color: TColors.bg,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  if (CurrentOrders.inst.showNewOrderContainer.value) ...[
                    TawseelTextField(
                      hintText: 'اسم المنتج',
                      obsecureText: false,
                      controller:
                          CurrentOrders.inst.newOrderNameController.value,
                    ),
                    TawseelTextField(
                      hintText: 'سعر المنتج',
                      obsecureText: false,
                      suffixText: 'ج.م',
                      controller:
                          CurrentOrders.inst.newOrderPriceController.value,
                      inputType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: kPadding16,
                    ),
                    TawseelFilledButton(
                      color: TColors.success,
                      text: 'إضافة',
                      onTap: () {
                        if (CurrentOrders
                                    .inst.newOrderNameController.value.text !=
                                '' &&
                            CurrentOrders
                                    .inst.newOrderPriceController.value.text !=
                                '') {
                          CurrentOrders.inst.newOrders.addAll(
                            {
                              CurrentOrders
                                      .inst.newOrderNameController.value.text:
                                  int.parse(CurrentOrders
                                      .inst.newOrderPriceController.value.text)
                            },
                          );
                          CurrentOrders.inst.newOrderNameController.value
                              .clear();
                          CurrentOrders.inst.newOrderPriceController.value
                              .clear();
                          CurrentOrders.inst.showNewOrderContainer.value =
                              false;
                        }
                      },
                    ),
                  ]
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(kPadding16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "تفاصيل الطلب",
                    style: TText.titleMedium,
                  ),
                  const SizedBox(
                    height: kPadding8,
                  ),
                  const TawseelTextField(
                    hintText: 'اسم العميل',
                  ),
                  TawseelTextField(
                    hintText: 'عنوان العميل',
                    suffixIcon: Icons.map,
                    onTap: () => showChooseLocationBottomSheet(),
                  ),
                  const TawseelTextField(
                    hintText: 'رقم العميل',
                  ),
                  const TawseelTextField(
                    hintText: 'تكلفة التوصيل',
                  ),
                  const SizedBox(
                    height: kPadding16,
                  ),
                  TawseelFilledButton(
                    onTap: () => showAddedProductSuccessfullyBottomSheet(),
                    text: 'إرسال طلب',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
