import 'package:flutter/material.dart';

import 'package:tawseel/core/constants.dart';

bool passwordVisible = false;

@override
void initState() {
  passwordVisible = true;
}

class TawseelTextField extends StatefulWidget {
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
  State<TawseelTextField> createState() => _TawseelTextFieldState();
}

class _TawseelTextFieldState extends State<TawseelTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kMargin12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kBorderRadius6)),
      child: TextFormField(
        obscureText: passwordVisible,
        keyboardType: widget.inputType,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        controller: widget.controller,
        style: TText.displaySmall,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field must not be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.symmetric(
              vertical: kPadding8, horizontal: kPadding12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadius6),
          ),
          prefixIcon: widget.prefixIcon != null
              ? Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: kPadding8, horizontal: kPadding4),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: TColors.bg,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: Icon(widget.prefixIcon),
                )
              : null,
          suffixText: widget.suffixText,
          suffixIcon: widget.suffixIcon != null
              ? IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                )
              : null,
        ),
      ),
    );
  }
}
