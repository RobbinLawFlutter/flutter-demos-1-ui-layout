import 'package:flutter/material.dart';

import 'app_router.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key, this.args}) : super(key: key);
  final Object args;

  static Future<void> show(BuildContext context,
      {Object argsFromCaller}) async {
    await Navigator.of(context, rootNavigator: true).pushNamed(
      AppRoutes.screen2,
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
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            data == null
                ? Text('no data')
                : Text('${data['firstname']}, ${data['lastname']}'),
            RaisedButton(
              color: Colors.red,
              child: Text('Go To Screen 1'),
              onPressed: () => Screen1.show(
                context,
                argsFromCaller: {
                  'firstname': 'Data from',
                  'lastname': 'Screen TWO'
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
