import 'package:flutter/material.dart';

import 'package:tawseel/core/constants.dart';

class TawseelTextField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String? hintText;
  final String? suffixText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final bool obsecureText;
  final TextInputType? inputType;
  const TawseelTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.onTap,
    this.hintText,
    this.suffixText,
    this.suffixIcon,
    this.prefixIcon,
    this.obsecureText = false,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kMargin12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(kBorderRadius6)),
      child: TextField(
        obscureText: obsecureText,
        keyboardType: inputType,
        onChanged: onChanged,
        onTap: onTap,
        controller: controller,
        style: TText.displaySmall,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: kPadding8, horizontal: kPadding12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadius6),
          ),
          prefixIcon: prefixIcon != null
              ? Container(
                  margin: const EdgeInsets.symmetric(vertical: kPadding8, horizontal: kPadding4),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: TColors.bg,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: Icon(prefixIcon),
                )
              : null,
          suffixText: suffixText,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        ),
      ),
    );
  }
}
