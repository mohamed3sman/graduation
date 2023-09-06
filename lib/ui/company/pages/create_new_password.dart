import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/pages/login_page.dart';
import 'package:tawseel/ui/company/widgets/default_back_button.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      title: const Text("انشاء كلمة مرور جديدة"),
      leading: const TawseelBackButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kPadding12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "قم بانشاء كلمة مرور جديدة بحيث لا تشابه كلمة المرور القديمة",
                style: TText.displaySmall,
              ),
              const SizedBox(
                height: kPadding24 * 2,
              ),
              Align(
                child: Container(
                  padding: const EdgeInsets.all(kPadding16),
                  decoration: BoxDecoration(
                    color: TColors.card,
                    border: Border.all(width: 1.2, color: TColors.handle),
                    borderRadius: BorderRadius.circular(kBorderRadius20),
                  ),
                  child: Image.asset(
                    "assets/images/lock.png",
                    width: context.width / 2,
                    scale: 0.1,
                  ),
                ),
              ),
              const SizedBox(height: kPadding12),
              const TawseelTextField(
                suffixIcon: Icons.lock_outline,
                prefixIcon: Icons.remove_red_eye,
                hintText: "كلمة المرور",
                obsecureText: true,
              ),
              const SizedBox(height: kPadding12),
              const TawseelTextField(
                suffixIcon: Icons.lock_outline,
                prefixIcon: Icons.remove_red_eye,
                hintText: "تأكيد-كلمة المرور",
                obsecureText: true,
              ),
              const SizedBox(height: kPadding24),
              TawseelFilledButton(
                text: "انشاء كلمة المرور",
                textColor: TColors.whiteText,
                onTap: () => Get.offAll(() => const TawseelScaffold()),
              ),
              const SizedBox(height: kPadding24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "العودة إلى ",
                    style: TText.displayMedium,
                  ),
                  TextButton(
                    onPressed: () => Get.to(() => const LoginPage()),
                    child: Text(
                      "تسجيل الدخول",
                      style: TText.displayMedium.copyWith(color: TColors.main),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
