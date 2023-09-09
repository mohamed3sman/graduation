import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';
import 'package:tawseel/class/order.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/core/enums.dart';
import 'package:tawseel/ui/company/pages/order_details.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/notification_icon.dart';
import 'package:tawseel/ui/company/widgets/order_box.dart';
import 'reason.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({Key? key}) : super(key: key);

  @override
  State<DriverHomePage> createState() => _DriverHomePageState();
}

class _DriverHomePageState extends State<DriverHomePage> {
  String status = "متصل الأن";
  bool value = true;

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
                  style: TText.titleLarge.copyWith(color: TColors.blackText),
                ),
                subtitle: Text(
                  status,
                  style: TText.titleMedium.copyWith(color: TColors.main),
                ),
                trailing: Switch(
                  activeColor: TColors.main,
                  value: value,
                  onChanged: (bool val) {
                    setState(() {
                      value = !value;

                      value == false ? status = 'غير متصل' : status;
                    });
                  },
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius8),
                      border: Border.all(color: TColors.main),
                    ),
                    child: TawseelFilledButton(
                      onTap: () => Get.to(() => OrderDetails(
                            orderBox: TawseelOrderBox(
                                order: Order(
                                    OrderState.onTheWay,
                                    25613,
                                    'شارع 44-السبتية-القاهرة',
                                    DateTime.now(),
                                    40)),
                          )),
                      text: "عرض التفاصيل ",
                      textColor: TColors.main,
                      color: TColors.card,
                    ),
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
              trailing: Image.asset("assets/images/bluebox.png"),
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
              trailing: Image.asset("assets/images/walletmoney.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TawseelFilledButton(
                  textColor: TColors.card,
                  text: "انهاء الطلب",
                  width: Get.width / 3,
                  onTap: () {
                    QuickAlert.show(
                      context: context,
                      confirmBtnColor: Colors.green,
                      title: 'تم إرسال الطلب',
                      confirmBtnText: 'حسنا',
                      type: QuickAlertType.success,
                    );
                  },
                ),
                TawseelFilledButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Reason();
                    }));
                  },
                  color: TColors.handle,
                  textColor: TColors.blackText,
                  text: "الغاء الطلب",
                  width: Get.width / 3,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
