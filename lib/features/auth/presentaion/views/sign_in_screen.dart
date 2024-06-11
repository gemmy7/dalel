import 'package:dalel/core/routing/routs.dart';
import 'package:dalel/core/shared_widgets/custom_buuton.dart';
import 'package:dalel/core/shared_widgets/navigate.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/auth/presentaion/views/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/presentaion/views/widgets/signin_and_signup.dart';
import 'package:dalel/features/auth/presentaion/views/widgets/welcome_banner.dart';
import 'package:dalel/features/auth/presentaion/views/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObSecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: WelcomeBanner(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 22,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomeText(
              text: AppStrings.welcomeBack,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFormField(
              labelText: AppStrings.emailAddress,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextFormField(
              labelText: AppStrings.password,
              isObSecureText: isObSecureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObSecureText = !isObSecureText;
                  });
                },
                child: Icon(
                  isObSecureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(AppStrings.forgotPassword,
                      style: CustomTextStyles.poppins400style16),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                onPresed: () {
                  context.pushReplacementNamed(Routes.homeScreen);
                },
                text: AppStrings.signIn,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverToBoxAdapter(
            child: SignInOrSignUpText(
              onTap: () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
            ),
          )
        ],
      ),
    );
  }
}
