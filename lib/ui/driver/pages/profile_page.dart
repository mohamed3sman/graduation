// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/pages/Change_password.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/notification_icon.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

class DriverProfilePage extends StatelessWidget {
  const DriverProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TawseelScaffold(
          body: ListView(
            children: [
              SizedBox(
                height: kPadding24 * 3,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kPadding20),
                decoration: BoxDecoration(
                  color: TColors.card.withAlpha(222),
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(kBorderRadius20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            transform: Matrix4.translationValues(0, -50, 0),
                            child: TawseelContainer(
                              height: Get.width / 3.4,
                              isCircle: true,
                              // margin: EdgeInsets.all(kPadding24 * 4.4),
                              child: Image.asset("assets/images/pfp.png"),
                            ),
                          ),
                          // Icon(Icons.add_a_photo_outlined)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "محمد شادي",
                          style: TText.headlineSmall,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kPadding24,
                    ),
                    Text(
                      "الاسم",
                      style: TText.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                    TawseelTextField(hintText: "محمد شادي"),
                    SizedBox(
                      height: kPadding12,
                    ),
                    Text(
                      "رقم الهاتف",
                      style: TText.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                    TawseelTextField(hintText: '010222145441'),
                    SizedBox(
                      height: kPadding12,
                    ),
                    Text(
                      "البريد الالكتروني",
                      style: TText.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                    TawseelTextField(hintText: 'mohamedshady@gmail.com'),
                    SizedBox(
                      height: kPadding12,
                    ),
                    Text(
                      "العنوان",
                      style: TText.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                    TawseelTextField(
                      hintText: 'شارع 10 - باب الشعرية - القاهرة',
                      suffixIcon: Icons.location_pin,
                    ),
                    SizedBox(
                      height: kPadding24,
                    ),
                    TawseelFilledButton(
                      color: TColors.success,
                      text: 'حفظ التغييرات',
                    ),
                    SizedBox(
                      height: kPadding24,
                    ),
                    TawseelFilledButton(
                      color: TColors.handle,
                      text: 'تغيير كلمة المرور',
                      onTap: () => Get.to(() => ChangePassword()),
                    ),
                    SizedBox(
                      height: kPadding24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SafeArea(
          child: TawseelContainer(
            margin: EdgeInsets.symmetric(horizontal: kPadding20),
            padding: EdgeInsets.all(kPadding8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.logout_rounded,
                  color: Colors.red,
                ),
                SizedBox(width: kPadding12),
                Text(
                  "تسجيل الخروج",
                  style: TText.displayLarge.copyWith(color: TColors.error),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(kPadding8),
          child: SafeArea(
            child: TawseelNotificationIcon(),
          ),
        ),
      ],
    );
  }
}
