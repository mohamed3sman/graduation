import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/pages/login_page.dart';
import 'package:tawseel/ui/pages/signup_page.dart';
import 'package:tawseel/ui/widgets/default_container.dart';

import '../widgets/filled_button.dart';

class OnBoardingPage extends StatefulWidget {
  final Widget? child;
  const OnBoardingPage({Key? key, this.child}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  // bool signInButtonClicked = false;
  int _currentPage = 0;
  late Timer timer;

  final PageController pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutQuart,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.black.withAlpha(110),
            child: widget.child ??
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Get.width / 2,
                      child: PageView(controller: pageController, children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
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
                              "تسليم الأرباح",
                              style: TText.titleMedium.copyWith(color: TColors.whiteText),
                            ),
                            const SizedBox(
                              height: kPadding20,
                            ),
                            Text(
                              "هتاخد تكاليف الطلب و انت فى مكانك و سيب الباقى علينا",
                              style: TText.bodySmall.copyWith(color: TColors.whiteText),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TawseelContainer(
                              isCircle: true,
                              padding: const EdgeInsets.all(kPadding20),
                              child: Image.asset(
                                'assets/images/boxlocation.png',
                                width: Get.width / 5,
                                height: Get.width / 5,
                              ),
                            ),
                            const SizedBox(
                              height: kPadding12,
                            ),
                            Text(
                              "التوصيل و التسليم",
                              style: TText.titleMedium.copyWith(color: TColors.whiteText),
                            ),
                            const SizedBox(
                              height: kPadding20,
                            ),
                            Text(
                              "بعد استلام ارباحك هيقوم أحد السائقين بتوصيل طلبك للعميل",
                              style: TText.bodySmall.copyWith(color: TColors.whiteText),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TawseelContainer(
                              isCircle: true,
                              padding: const EdgeInsets.all(kPadding20),
                              child: Image.asset(
                                'assets/images/hand_box.png',
                                width: Get.width / 5,
                                height: Get.width / 5,
                              ),
                            ),
                            const SizedBox(
                              height: kPadding12,
                            ),
                            Text(
                              "استلام الطلب",
                              style: TText.titleMedium.copyWith(color: TColors.whiteText),
                            ),
                            const SizedBox(
                              height: kPadding20,
                            ),
                            Text(
                              "هيتم استلام طلبك من خلال أحد السائقين اللى هتختارهم",
                              style: TText.bodySmall.copyWith(color: TColors.whiteText),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: kPadding20,
                    ),
                    TawseelFilledButton(
                      width: Get.width - kPadding20 * 2,
                      text: "تسجيل دخول",
                      onTap: () => Get.to(() => const LoginPage()),
                    ),
                    const SizedBox(
                      height: kPadding20,
                    ),
                    TawseelFilledButton(
                      width: Get.width - kPadding20 * 2,
                      text: "تسجيل جديد",
                      textColor: TColors.blackText,
                      color: TColors.card,
                      onTap: () => Get.to(() => const SignupPage()),
                    )
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
