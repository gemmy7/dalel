import 'package:dalel/core/routing/routs.dart';
import 'package:dalel/core/shared_widgets/navigate.dart';
import 'package:dalel/core/utils/app_constants.dart';
import 'package:dalel/features/on_boarding/presentaion/views/widgets/button_body.dart';
import 'package:dalel/features/on_boarding/presentaion/views/widgets/custom_nav_bar.dart';
import 'package:dalel/features/on_boarding/presentaion/views/widgets/custom_onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  get children => null;

  get curve => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: AppConstants.height40(context),
              ),
              CustomNavBar(
                onTap: () {
                  context.pushReplacementNamed(Routes.loginScreen);
                },
              ),
              SizedBox(
                height: AppConstants.height20(context),
              ),
              OnBoardingBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.20),
              ButtonBody(
                currentIndex: currentIndex,
                controller: _controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}
