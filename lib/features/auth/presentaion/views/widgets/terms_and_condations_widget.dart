import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class TermsAndCondationsWidget extends StatelessWidget {
  const TermsAndCondationsWidget(
      {super.key, required this.value, required this.onChanged});
  final bool value;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          side: const BorderSide(color: Colors.grey),
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: CustomTextStyles.poppins400style12),
          TextSpan(
              text: AppStrings.termsAndCondition,
              style: CustomTextStyles.poppins400style12
                  .copyWith(decoration: TextDecoration.underline))
        ]))
      ],
    );
  }
}
