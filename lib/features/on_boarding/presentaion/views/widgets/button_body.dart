import 'package:dalel/core/routing/routs.dart';
import 'package:dalel/core/shared_widgets/custom_buuton.dart';
import 'package:dalel/core/shared_widgets/navigate.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonBody extends StatelessWidget {
  const ButtonBody(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.loginNow,
            onPresed: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
          ),
          const SizedBox(
            height: 4,
          ),
          GestureDetector(
              onTap: () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
              child: Text(
                AppStrings.createAccount,
                style: CustomTextStyles.poppins400style12,
              ))
        ],
      );
    } else {
      return CustomButton(
          text: AppStrings.next,
          onPresed: () {
            controller.nextPage(
                duration: const Duration(microseconds: 200),
                curve: Curves.bounceIn);
          });
    }
  }
}
