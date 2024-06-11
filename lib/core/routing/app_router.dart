import 'package:dalel/core/routing/routs.dart';
import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/features/auth/presentaion/Views_models/cubit/login_cubit/login_cubit.dart';
import 'package:dalel/features/auth/presentaion/Views_models/cubit/signup_cubit/cubit/signup_cubit.dart';
import 'package:dalel/features/auth/presentaion/views/sign_in_screen.dart';
import 'package:dalel/features/auth/presentaion/views/sign_up_screen.dart';
import 'package:dalel/features/home/presentaion/home_screen.dart';
import 'package:dalel/features/on_boarding/presentaion/views/on_boarding_screen.dart';
import 'package:dalel/features/splash/presentaion/views/splash.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
