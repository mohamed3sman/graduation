import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/pages/login_page.dart';
import 'package:tawseel/ui/company/widgets/default_back_button.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

import 'home_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      title: Text(
        "تسجيل جديد",
        style: TText.titleMedium.copyWith(color: TColors.blackText),
      ),
      leading: const TawseelBackButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                hintText: "الأسم",
                obsecureText: false,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                hintText: "رقم السجل الضريبى",
                obsecureText: false,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                hintText: "صورة السجل التجارى",
                obsecureText: false,
                suffixIcon: Icons.attach_file_rounded,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                hintText: "رقم التفاعل",
                obsecureText: false,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                hintText: "البريد الألكترونى",
                obsecureText: false,
                suffixIcon: Icons.email,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                hintText: "الرقم السري",
                obsecureText: true,
                suffixIcon: Icons.remove_red_eye,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                hintText: "تأكيد الرقم السري",
                obsecureText: true,
                suffixIcon: Icons.remove_red_eye,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(kPadding8),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.check_circle),
                      onPressed: () {},
                    ),
                    Text(
                      "حفظ البيانات",
                      style: TText.titleMedium,
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(kPadding8),
              child: Row(
                children: [
                  Expanded(
                    child: TawseelFilledButton(
                      text: "دخول كسائق",
                      onTap: () => Get.to(() => const TawseelScaffold()),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: TawseelFilledButton(
                      text: "دخول كشركة",
                      onTap: () => Get.to(() => const Homepage()),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الأنتقال الى ",
                  style: TText.displaySmall,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text(
                    "تسجيل دخول",
                    style: TextStyle(
                        fontSize: 16,
                        color: primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
