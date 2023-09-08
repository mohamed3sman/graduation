import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/company/widgets/default_container.dart';
import 'package:tawseel/ui/company/widgets/default_scaffold.dart';
import 'package:tawseel/ui/company/widgets/notification_icon.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              margin: const EdgeInsets.all(kPadding12),
              decoration: BoxDecoration(
                color: TColors.main,
                borderRadius: BorderRadius.circular(kBorderRadius12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1500 جم",
                          style: TText.headlineMedium.copyWith(
                            color: TColors.whiteText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.wallet,
                    size: 80,
                    color: TColors.whiteText,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "اخر عمليات",
                    style: TText.displayMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("رقم الطلب 1234"), Text("3.10.2022")],
                  ),
                  Text("+30")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("رقم الطلب 1234"), Text("3.10.2022")],
                  ),
                  Text("+30")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("رقم الطلب 1234"), Text("3.10.2022")],
                  ),
                  Text("+30")
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("الاجمالي"), Text("1500")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
