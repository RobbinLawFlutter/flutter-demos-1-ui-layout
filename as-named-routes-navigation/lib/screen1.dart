import 'package:flutter/material.dart';

import 'app_router.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key, this.args}) : super(key: key);
  final Object args;

  static Future<void> show(BuildContext context,
      {Object argsFromCaller}) async {
    await Navigator.of(context, rootNavigator: true).pushNamed(
      AppRoutes.screen1,
      arguments: argsFromCaller,
    );
  }

  @override
  Widget build(BuildContext context) {
    Map data = {};
    data = args;
    //data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            data == null
                ? Text('no data')
                : Text('${data['firstname']}, ${data['lastname']}'),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go To Screen 2'),
              onPressed: () => Screen2.show(
                context,
                argsFromCaller: {
                  'firstname': 'Data from',
                  'lastname': 'Screen ONE'
                },
              ),
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('Go Back'),
              onPressed: () {
                //Navigate back by popping
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
