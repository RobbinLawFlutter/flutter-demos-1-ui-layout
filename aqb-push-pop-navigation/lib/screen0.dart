import 'package:flutter/material.dart';
import 'package:aqb_push_pop_navigation/screen1.dart';
import 'package:aqb_push_pop_navigation/screen2.dart';

class Screen0 extends StatelessWidget {
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
              onPressed: () {
                //Navigate to Screen 1
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen1(),
                  ),
                );
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go To Screen 2'),
              onPressed: () {
                //Navigate to Screen 2
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
