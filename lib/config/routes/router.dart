import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';
import 'route_constant.dart';

class Routes {
  Routes._();

  static List<RouteEntities> routeList() {
    return [
      const RouteEntities(
        routeName: RouteConstant.splash,
        screen: SplashScreen(),
      ),
      const RouteEntities(
        routeName: RouteConstant.home,
        screen: HomeScreen(),
      )
    ];
  }

  static MaterialPageRoute generateRoute(RouteSettings settings) {
    if (settings.name != null) {
      var result =
          routeList().where((element) => element.routeName == settings.name);
      if (result.isNotEmpty) {
        return MaterialPageRoute(
          builder: (_) => result.first.screen,
          settings: settings,
        );
      }
    }
    return MaterialPageRoute(
      builder: (_) => const SplashScreen(),
      settings: settings,
    );
  }
}

class RouteEntities {
  final String routeName;
  final Widget screen;
  const RouteEntities({
    required this.routeName,
    required this.screen,
  });
}
