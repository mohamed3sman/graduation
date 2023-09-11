import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/default_back_button.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/filled_button.dart';

import '../widgets/textfield.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      title: Text(
        "تغيير الرقم السري",
        style: TText.titleMedium.copyWith(color: TColors.blackText),
      ),
      leading: const TawseelBackButton(),
      body: Align(
        alignment: Alignment.topRight,
        child: TawseelContainer(
          width: double.infinity,
          padding: const EdgeInsets.all(kPadding12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: kPadding12),
              Text(
                "الرقم السرى القديم",
                style: TText.titleMedium.copyWith(color: TColors.blackText),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: kPadding12),
              const TawseelTextField(
                suffixIcon: Icons.remove_red_eye,
                inputType: TextInputType.visiblePassword,
                obsecureText: true,
              ),
              const SizedBox(height: kPadding12),
              Text(
                "الرقم السرى الجديد",
                style: TText.titleMedium.copyWith(color: TColors.blackText),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: kPadding12),
              const TawseelTextField(
                suffixIcon: Icons.remove_red_eye,
                inputType: TextInputType.visiblePassword,
                obsecureText: true,
              ),
              const SizedBox(height: kPadding12),
              Text(
                "تأكيد الرقم السرى الجديد",
                style: TText.titleMedium.copyWith(color: TColors.blackText),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: kPadding12),
              const TawseelTextField(
                suffixIcon: Icons.remove_red_eye,
                inputType: TextInputType.visiblePassword,
                obsecureText: true,
              ),
              const SizedBox(height: kPadding20),
              TawseelFilledButton(
                text: "حفظ التغييرات",
                color: TColors.success,
                onTap: () {
                  QuickAlert.show(
                    context: context,
                    confirmBtnColor: Colors.green,
                    title: 'تم حفظ التغييرات',
                    confirmBtnText: 'حسنا',
                    type: QuickAlertType.success,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
