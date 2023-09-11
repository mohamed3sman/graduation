import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/pages/onboarding_page.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';
import 'package:tawseel/ui/driver/pages/driver_scaffold.dart';

import 'reset_password_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? selectedOption = 'Driver';
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      child: Container(
        padding: const EdgeInsets.all(kPadding12),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                TawseelContainer(
                  isCircle: true,
                  padding: const EdgeInsets.all(kPadding20),
                  child: Image.asset(
                    'assets/images/handmoney.png',
                    width: Get.width / 5,
                    height: Get.width / 5,
                  ),
                ),
                const SizedBox(
                  height: kPadding12,
                ),
                Text(
                  "تسجيل الدخول",
                  style: TText.titleMedium.copyWith(color: TColors.whiteText),
                ),
                const SizedBox(
                  height: kPadding20,
                ),
                Text(
                  "قم بتسجيل الدخول للمتابعة",
                  style: TText.bodySmall.copyWith(color: TColors.whiteText),
                ),
                const SizedBox(
                  height: kPadding20,
                ),
                const TawseelTextField(
                  hintText: 'رقم الهاتف',
                  inputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: kPadding20,
                ),
                const TawseelTextField(
                  hintText: 'الرقم السري',
                  suffixIcon: Icons.remove_red_eye,
                  obsecureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Get.to(() => const ResetPasswordPage()),
                      child: Text(
                        'نسيت كلمة السر؟',
                        textAlign: TextAlign.start,
                        style: TText.bodyMedium.copyWith(
                          color: TColors.whiteText,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TawseelFilledButton(
                        text: "دخول كسائق",
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Get.to(() => const DriverScaffold());
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: TawseelFilledButton(
                          text: "دخول كشركة",
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Get.to(() => const TawseelScaffold());
                            }
                          }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ليس لديك حساب ؟',
                      textAlign: TextAlign.start,
                      style: TText.bodyMedium.copyWith(
                        color: TColors.whiteText,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color:
                                  Colors.white, // Change the color of the line
                              width: 1.0, // Adjust the width of the line
                            ),
                          ),
                        ),
                        child: Text(
                          'إنشاء حساب',
                          textAlign: TextAlign.start,
                          style: TText.bodyMedium.copyWith(
                            color: TColors.whiteText,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
