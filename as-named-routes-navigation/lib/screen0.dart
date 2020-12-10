import 'package:flutter/material.dart';
import 'app_router.dart';
import 'screen1.dart';
import 'screen2.dart';

class Screen0 extends StatelessWidget {
  static Future<void> show(BuildContext context) async {
    await Navigator.of(context, rootNavigator: true).pushNamed(
      AppRoutes.screen0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.red,
              child: Text('Go To Screen 1'),
              onPressed: () => Screen1.show(
                context,
                argsFromCaller: {
                  'firstname': 'Data from',
                  'lastname': 'Screen ZERO'
                },
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go To Screen 2'),
              onPressed: () => Screen2.show(
                context,
                argsFromCaller: {
                  'firstname': 'Data from',
                  'lastname': 'Screen ZERO'
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
