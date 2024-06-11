import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.suffixIcon,
      this.isObSecureText});
  final String labelText;
  final Widget? suffixIcon;
  final bool? isObSecureText;

  OutlineInputBorder getBorderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: AppColors.grey,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, top: 0, bottom: 24, right: 16),
      child: TextFormField(
        obscureText: isObSecureText ?? false,
        decoration: InputDecoration(
          isDense: true,
          suffixIcon: suffixIcon,
          label: Text(labelText),
          labelStyle: CustomTextStyles.poppins500style18,
          border: getBorderStyle(),
          focusedBorder: getBorderStyle(),
          enabledBorder: getBorderStyle(),
        ),
      ),
    ));
  }
}
