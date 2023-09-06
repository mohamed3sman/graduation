import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import '../widgets/default_container.dart';
import '../widgets/filled_button.dart';
import '../widgets/notification_icon.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      toolbarHeight: Get.height / 10,
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
        padding: const EdgeInsets.all(kPadding8),
        child: ListView(
          children: [
            const SizedBox(
              height: kPadding16,
            ),
            TawseelContainer(
              child: ListTile(
                title: Text(
                  "حالة العمل",
                  style: TText.titleLarge.copyWith(color: Colors.black),
                ),
                subtitle: Text(
                  "متصل الأن",
                  style: TText.titleMedium.copyWith(color: TColors.main),
                ),
                trailing: Switch(
                  value: true,
                  onChanged: (bool val) {},
                ),
              ),
            ),
            const SizedBox(
              height: kPadding12,
            ),
            TawseelContainer(
              child: ListTile(
                title: Text(
                  "المكان الحالى",
                  style: TText.titleLarge.copyWith(color: Colors.black),
                ),
                subtitle: Row(
                  children: [
                    const Icon(Icons.home),
                    Text(
                      "شارع 10 - باب الشعرية - القاهرة",
                      style:
                          TText.titleMedium.copyWith(color: TColors.blackText),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: kPadding12,
            ),
            TawseelContainer(
                child: Padding(
              padding: const EdgeInsets.all(kPadding8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "الطلبات الحالية",
                    style: TText.titleLarge.copyWith(color: TColors.blackText),
                  ),
                  TawseelContainer(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TawseelContainer(
                            isCircle: true,
                            child: Image.asset('assets/images/logo.png',
                                fit: BoxFit.cover, width: 30)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TawseelContainer(
                                child: Text("كريسبي & كرانشي")),
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
                          style:
                              TText.titleMedium.copyWith(color: TColors.main),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TawseelFilledButton(
                        textColor: TColors.card,
                        text: "انهاء الطلب",
                        width: Get.width / 4,
                      ),
                      TawseelFilledButton(
                        color: TColors.card,
                        textColor: TColors.blackText,
                        text: "الغاء الطلب",
                        width: Get.width / 4,
                      ),
                    ],
                  )
                ],
              ),
            )),
            const SizedBox(
              height: kPadding8 / 2,
            ),
            ListTile(
              title: const Text(
                "45 طلب",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              subtitle: Text(
                "عدد الطلبات",
                style: TText.titleSmall.copyWith(color: TColors.blackText),
              ),
              trailing: Image.asset("assets/images/orders.png"),
            ),
            const SizedBox(
              height: kPadding8 / 2,
            ),
            ListTile(
              title: Text(
                "1,200 ج.م",
                style: TText.titleMedium.copyWith(color: TColors.main),
              ),
              subtitle: Text(
                "المستحقات المطلوبة",
                style: TText.titleSmall.copyWith(color: TColors.blackText),
              ),
              trailing: Image.asset("assets/images/funds.png"),
            ),
          ],
        ),
      ),
    );
  }
}
