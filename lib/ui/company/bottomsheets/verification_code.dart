import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/pages/create_new_password.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';

void showVerificationCodeBottomSheet() {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TText.displayLarge,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(kBorderRadius6),
      border: Border.all(color: TColors.mainLight),
    ),
  );

  Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: kPadding12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40.0,
                  child: IconButton(
                    onPressed: () => Get.close(1),
                    icon: const Icon(Icons.close),
                  ),
                ),
                Text(
                  "رمز التأكيد",
                  style: TText.titleMedium,
                ),
                const SizedBox(
                  width: 40.0,
                )
              ],
            ),
            const SizedBox(
              height: kPadding12,
            ),
            Text(
              "من فضلك أدخل رمز التأكيد المكون من 4 أرقام المرسلة على هذا الرقم *******45",
              style: TText.displayMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: kPadding16,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Pinput(
                // controller: pinController,
                // focusNode: focusNode,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                defaultPinTheme: defaultPinTheme,
                validator: (value) {
                  return value == '2222' ? null : 'الكود غير صحيح';
                },
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                onCompleted: (pin) {
                  debugPrint('onCompleted: $pin');
                  if (pin == '2222') {
                    Get.to(() => const CreateNewPassword());
                  }
                },
                onChanged: (value) {
                  debugPrint('onChanged: $value');
                },
                cursor: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 9),
                      width: 22,
                      height: 1,
                      color: TColors.mainLight,
                    ),
                  ],
                ),
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    borderRadius: BorderRadius.circular(kBorderRadius6),
                    border: Border.all(color: TColors.mainLight),
                  ),
                ),
                submittedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kBorderRadius8),
                    border: Border.all(color: TColors.mainLight),
                  ),
                ),
                errorPinTheme: defaultPinTheme.copyBorderWith(
                  border: Border.all(color: TColors.error),
                ),
              ),
            ),
            const SizedBox(
              height: kPadding16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "إعادة إرسال الكود",
                  style: TText.displaySmall.copyWith(
                      fontSize: 14.0, decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  width: kPadding4,
                ),
                Text(
                  "00:35",
                  style: TText.displayMedium.copyWith(color: TColors.mainLight),
                ),
              ],
            ),
            const SizedBox(
              height: kPadding12,
            ),
            Padding(
              padding: const EdgeInsets.all(kPadding8),
              child: TawseelFilledButton(
                text: 'إرسال الرمز',
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: kPadding12,
            ),
            Container(
              width: Get.width / 2.5,
              height: 4.0,
              decoration: BoxDecoration(
                color: TColors.handle,
                borderRadius: BorderRadius.circular(kBorderRadius12),
              ),
            ),
            const SizedBox(
              height: kPadding16,
            ),
          ],
        ),
      ),
    ),
    backgroundColor: TColors.card,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(kBorderRadius24),
      ),
    ),
  );
}
