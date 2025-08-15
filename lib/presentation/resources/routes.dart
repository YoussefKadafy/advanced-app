import 'package:flutter/material.dart';
import 'package:new_app/presentation/forgot_password/forgot_password_view.dart';
import 'package:new_app/presentation/home/home_view.dart';
import 'package:new_app/presentation/login/login_view.dart';
import 'package:new_app/presentation/register/register_view.dart';
import 'package:new_app/presentation/resources/strings_manager.dart';
import 'package:new_app/presentation/splash/splash_view.dart';
import 'package:new_app/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String homeRoute = '/home';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String storeDetailsRoute = '/detailsStore';
  static const String onBoardingViewRoute = 'onBoaring';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return unknownRoute();
    }
  }

  static Route<dynamic> unknownRoute() {
    return MaterialPageRoute(
      builder:
          (_) => Scaffold(
            appBar: AppBar(title: Text(AppStrings.unknounRoute)),
            body: Center(child: Text(AppStrings.unknounRoute)),
          ),
    );
  }
}
