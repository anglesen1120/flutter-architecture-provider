import 'package:dogs/constant/app_constant.dart';
import 'package:dogs/page/home_page.dart';
import 'package:dogs/page/splash_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRouter.splash:
      return MaterialPageRoute(builder: (context) => SplashPage());
      break;
    case AppRouter.home:
      return MaterialPageRoute(builder: (context) => HomePage());
      break;

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}

final listRoute = {
  '/': (BuildContext context) => new SplashPage(),
};
