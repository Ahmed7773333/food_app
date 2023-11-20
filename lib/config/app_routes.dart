import 'package:flutter/material.dart';
import 'package:food_app/features/home%20layout/presentation/pages/home_layout.dart';
import 'package:food_app/features/register/presentation/pages/register_screen.dart';
import 'package:food_app/features/signin/presentation/pages/sign_in.dart';
import 'package:food_app/features/start_screen.dart';
import 'package:food_app/features/success_screen.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/app_styles.dart';

class Routes {
  static const String start = '/';
  static const String register = 'register';
  static const String signIn = 'signIn';
  static const String success = 'success';
  static const String home = 'home';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.start:
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case Routes.register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => SignIn());
      case Routes.success:
        return MaterialPageRoute(builder: (_) => const SuccessScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeLayout());

      default:
        return unDefinedScreen();
    }
  }

  static Route<dynamic> unDefinedScreen() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(
                  AppStrings.noRoute,
                  style: AppStyles.semiLargeargeStyle,
                ),
              ),
              body: Center(
                child: Text(
                  AppStrings.noRoute,
                  style: AppStyles.largeStyle,
                ),
              ),
            ));
  }
}
