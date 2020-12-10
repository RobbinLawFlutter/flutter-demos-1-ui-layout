import 'package:flutter/material.dart';

import 'screen0.dart';
import 'screen1.dart';
import 'screen2.dart';

class AppRoutes {
  static const screen0 = '/';
  static const screen1 = '/screen1';
  static const screen2 = '/screen2';
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.screen0:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Screen0(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.screen1:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Screen1(args: args),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.screen2:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Screen2(args: args),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return null;
    }
  }
}
