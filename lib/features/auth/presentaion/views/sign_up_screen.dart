import 'package:dalel/core/routing/routs.dart';
import 'package:dalel/core/shared_widgets/custom_buuton.dart';
import 'package:dalel/core/shared_widgets/navigate.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/features/auth/presentaion/views/widgets/custom_text_form_field.dart';
import 'package:dalel/features/auth/presentaion/views/widgets/signin_and_signup.dart';
import 'package:dalel/features/auth/presentaion/views/widgets/terms_and_condations_widget.dart';
import 'package:dalel/features/auth/presentaion/views/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignupScreen> {
  bool isObSecureText = true;
  bool termsValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 160,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomeText(
              text: AppStrings.welcome,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFormField(
              labelText: AppStrings.fristName,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFormField(
              labelText: AppStrings.lastName,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFormField(
              labelText: AppStrings.emailAddress,
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
            child: TermsAndCondationsWidget(
              value: termsValue,
              onChanged: (newValue) {
                setState(() {
                  termsValue = newValue!;
                });
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 130,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                  text: AppStrings.signUp,
                  onPresed: () {
                    context.pushReplacementNamed(Routes.homeScreen);
                  }),
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
                context.pushReplacementNamed(Routes.loginScreen);
              },
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signIn,
            ),
          )
        ],
      ),
    );
  }
}
