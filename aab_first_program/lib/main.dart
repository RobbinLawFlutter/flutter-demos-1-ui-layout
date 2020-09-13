//runApp function sets up the initial settings for the app
//and defines which is the root widget of the application.
//The framework forces the root widget to cover all the screen.
//Our root widget is the MaterialApp

// https://flutter.dev/docs/development/ui/widgets-intro

// https://flutter.dev/docs/development/ui/widgets/layout

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Text(
          'Hello World!',
        ),
      ),
    ),
  );
}
