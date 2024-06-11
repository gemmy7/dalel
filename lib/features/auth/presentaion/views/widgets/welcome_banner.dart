import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_constants.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      color: AppColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            AppStrings.appName,
            style: CustomTextStyles.pacifico700style32,
          ),
          SizedBox(
            height: AppConstants.height15(context),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Assets.imagesVector1),
              SvgPicture.asset(Assets.imagesVector2),
            ],
          )
        ],
      ),
    );
  }
}
