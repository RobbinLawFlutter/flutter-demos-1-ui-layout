//Named Route Navigation
//https://flutter.dev/docs/cookbook/navigation/named-routes

import 'package:flutter/material.dart';
import 'app_router.dart';
import 'screen0.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
      // {
      //   final arguments = settings.arguments;
      //   switch (settings.name) {
      //     case '/':
      //       return MaterialPageRoute(
      //         builder: (context) => Screen0(
      //           arguments: arguments,
      //         ),);
      //       break;
      //     case '/first':
      //       return MaterialPageRoute(
      //         builder: (context) => Screen1(
      //           arguments: arguments,
      //         ),);
      //       break;
      //     case '/second':
      //       return MaterialPageRoute(
      //         builder: (context) => Screen2(
      //           arguments: arguments,
      //         ),);
      //       break;
      //     default:
      //       break;
      //   }
      // },
      initialRoute: '/',
      //We are creating a Map type by using {}.
      //A list would be [].
      // routes: {
      //   '/': (context) => Screen0(),
      //   '/first': (context) => Screen1(),
      //   '/second': (context) => Screen2(),
      // },
    );
  }
}
