import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SignInOrSignUpText extends StatelessWidget {
  const SignInOrSignUpText(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});
  final String text1;
  final String text2;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: CustomTextStyles.poppins400style12),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: CustomTextStyles.poppins400style12
                .copyWith(color: AppColors.lightGrey),
          ),
        ),
      ],
    );
  }
}
