import 'package:flutter/material.dart';
import 'package:stock_scan_parser_application/application/presentation/routes/routes.dart';
import 'package:stock_scan_parser_application/application/presentation/screens/home/screen_home.dart';
import 'package:stock_scan_parser_application/application/presentation/screens/splash_screen/splash_screen.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const SplashScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (ctx) => const ScreenHome());
      
    }
    return errorRoutes();
  }

  static Route<dynamic> errorRoutes() {
    return MaterialPageRoute(builder: (ctx) {
      return const Scaffold(
        body: Center(
          child: Text('Something Error'),
        ),
      );
    });
  }
}
