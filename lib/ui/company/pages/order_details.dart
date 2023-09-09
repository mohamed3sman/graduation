import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/default_back_button.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/notification_icon.dart';
import 'package:tawseel/ui/company/widgets/order_box.dart';

class OrderDetails extends StatelessWidget {
  final TawseelOrderBox orderBox;
  const OrderDetails({super.key, required this.orderBox});

  @override
  Widget build(BuildContext context) {
    final Map<String, int> orders = {
      "بيتزا ايطالي": 60,
      "كريب شيش طاووق": 60,
      "برجر لحوم - حار": 60,
    };

    double total = 0;
    for (var o in orders.values) {
      total += o;
    }
    return TawseelScaffold(
      leading: const TawseelBackButton(),
      title: const Text('تفاصيل الطلب'),
      actions: const [TawseelNotificationIcon()],
      body: ListView(
        children: [
          orderBox,
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(kPadding12),
                margin: const EdgeInsets.all(kMargin20),
                decoration: BoxDecoration(
                  color: TColors.error.withAlpha(100),
                  borderRadius: BorderRadius.circular(kBorderRadius8),
                ),
                child: const Icon(Icons.close),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'سبب الالغاء',
                    style: TText.bodyLarge,
                  ),
                  Text(
                    'العميل رفض ذلك',
                    style: TText.displaySmall,
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: kPadding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'تفاصيل الطلب',
                  style: TText.headlineSmall,
                ),
                const SizedBox(
                  height: kPadding12,
                ),
                Text(
                  'المنتجات',
                  style: TText.titleMedium,
                ),
                const SizedBox(
                  height: kPadding4,
                ),
                ...orders.entries
                    .map(
                      (e) => Column(
                        children: [
                          const SizedBox(
                            height: kPadding4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e.key,
                                style: TText.displaySmall,
                              ),
                              Text(
                                "${e.value}ج.م",
                                style: TText.displaySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    .toList(),
                const SizedBox(
                  height: kPadding4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'السعر الكلي',
                      style: TText.displaySmall,
                    ),
                    Text(
                      "$totalج.م",
                      style: TText.displaySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: kPadding4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'خدمة التوصيل',
                      style: TText.displaySmall,
                    ),
                    Text(
                      "40ج.م",
                      style: TText.displaySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: kPadding4,
                ),
                const Divider(),
                //////////////
                Text(
                  'بيانات العميل',
                  style: TText.headlineSmall,
                ),
                const SizedBox(
                  height: kPadding12,
                ),
                Text(
                  'اسم العميل',
                  style: TText.titleMedium,
                ),
                const SizedBox(
                  height: kPadding4,
                ),
                Text(
                  'ابراهيم خالد احمد',
                  style: TText.displaySmall,
                ),

                const SizedBox(
                  height: kPadding12,
                ),
                Text(
                  'عنوان العميل',
                  style: TText.titleMedium,
                ),
                const SizedBox(
                  height: kPadding4,
                ),
                Text(
                  'شارع 44 السبتية القاهرة',
                  style: TText.displaySmall,
                ),

                const SizedBox(
                  height: kPadding12,
                ),
                Text(
                  'طريقة الدفع',
                  style: TText.titleMedium,
                ),
                const SizedBox(
                  height: kPadding4,
                ),
                Text(
                  'تم الدفع بالفيزا',
                  style: TText.displaySmall,
                ),

                const SizedBox(
                  height: kPadding12,
                ),
                Text(
                  'رقم العميل',
                  style: TText.titleMedium,
                ),
                const SizedBox(
                  height: kPadding4,
                ),
                Text(
                  '01452202515',
                  style: TText.displaySmall,
                ),

                const SizedBox(
                  height: kPadding12,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding24),
            child: OutlinedButton(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kBorderRadius6)))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.dialer_sip),
                  SizedBox(
                    width: kPadding8,
                  ),
                  Text("اتصال بالعميل"),
                ],
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
