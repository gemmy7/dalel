import 'package:dalel/core/routing/routs.dart';
import 'package:dalel/core/service/cach_helper.dart';
import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/core/shared_widgets/navigate.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
    if (isOnBoardingVisited == true) {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          context.pushReplacementNamed(Routes.loginScreen);
        },
      );
    } else {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          context.pushReplacementNamed(Routes.onBoardingScreen);
        },
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}
