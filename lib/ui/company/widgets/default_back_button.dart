import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TawseelBackButton extends StatelessWidget {
  const TawseelBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: const Icon(Icons.arrow_back_rounded),
    );
  }
}
