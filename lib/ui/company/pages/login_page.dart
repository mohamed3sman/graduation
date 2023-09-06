import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/pages/onboarding_page.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

import 'reset_password_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      child: Container(
        padding: const EdgeInsets.all(kPadding12),
        child: SingleChildScrollView(
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
              TawseelFilledButton(
                width: Get.width - kPadding20 * 2,
                text: "تسجيل دخول",
                onTap: () => Get.to(() => const TawseelScaffold()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
