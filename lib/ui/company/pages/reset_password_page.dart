import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/bottomsheets/verification_code.dart';
import 'package:tawseel/ui/company/widgets/default_back_button.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/dropdown_list.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';
import 'package:tawseel/ui/company/widgets/textfield.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      leading: Container(
        padding: const EdgeInsets.all(kPadding12),
        child: const TawseelContainer(
          child: TawseelBackButton(),
        ),
      ),
      title: const Text(
        "استرجاع كلمة المرور",
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "قم بإدخال رقم الهاتف أو البريد الإلكتروني لاسترجاع كلمة المرور",
                    style: TText.displaySmall,
                  ),
                  const SizedBox(
                    height: kPadding24 * 3,
                  ),
                  Align(
                    child: Container(
                      padding: const EdgeInsets.all(kPadding16),
                      decoration: BoxDecoration(
                        color: TColors.card,
                        border: Border.all(width: 1.2, color: TColors.handle),
                        borderRadius: BorderRadius.circular(kBorderRadius20),
                      ),
                      child: const Icon(
                        Icons.message,
                        size: 128,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kPadding24 * 3,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: TawseelTextField(
                          hintText: 'رقم الهاتف',
                          prefixIcon: Icons.numbers,
                        ),
                      ),
                      const SizedBox(
                        width: kPadding8,
                      ),
                      SizedBox(
                          width: Get.width / 4,
                          child: const TawseelDropDownList()),
                    ],
                  ),
                  const SizedBox(
                    height: kPadding24,
                  ),
                  TawseelFilledButton(
                    text: 'إرسال',
                    onTap: () => showVerificationCodeBottomSheet(),
                  ),
                  const SizedBox(
                    height: kPadding24 * 3,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'العودة إلى',
                        style: TText.displaySmall
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'تسجيل الدخول',
                          style: TText.displaySmall.copyWith(
                              color: TColors.mainLight,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
