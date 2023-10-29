import 'package:flutter/material.dart';

class AppRoutes {
  static const splash_screen = '/splash_screen';
  static const loading = '/loading';
  static const load_quote = '/load_quote';
  static const onBoarding = '/OnBoarding';
  static const login_screen = '/parallax';
  static const quiz = '/quiz';
  static const load_2 = '/load_2';
  static const done  = '/done';
  static const main_login = '/login_screen';
  static const home = '/home';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case AppRoutes.splash_screen:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) => SplashScreen(),
      //     settings: settings,
      //   );
      // case AppRoutes.loading:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) =>  Loading(),
      //     settings: settings,
      //   );
      // case AppRoutes.load_quote:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) =>   Load_Quote(),
      //     settings: settings,
      //   );
      // case AppRoutes.onBoarding:
      //   return MaterialPageRoute(
      //     builder: (context) => onBoarding_screen(),
      //   );
      // case AppRoutes.login_screen:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) => ParallaxScroll(),
      //     settings: settings,
      //   );
      // case AppRoutes.quiz:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) => const Quiz_screen(),
      //     settings: settings,
      //   );
      // case AppRoutes.done:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) => const DoneScreen(),
      //     settings: settings,
      //   );
      // case AppRoutes.load_2:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) =>  Load_2(),
      //     settings: settings,
      //   );
      // case AppRoutes.login_screen:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) =>  ParallaxScroll(),
      //     settings: settings,
      //   );
      // case AppRoutes.home:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) =>  HomeScreen(),
      //     settings: settings,
      //   );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Scaffold(),
          settings: settings,
        );
    }
  }
}