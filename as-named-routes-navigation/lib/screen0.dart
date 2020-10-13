import 'package:flutter/material.dart';

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
                //Use .pushReplacementNamed to replace the
                //previous page where as .pushNamed goes on
                //top of the previous page.
                //Can not pop if using .pushReplacementNamed.
                Navigator.pushNamed(context, '/first',
                    arguments: {'firstname': 'Robbin', 'lastname': 'Law'});
                //Navigate to Screen 1
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go To Screen 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/second',
                    arguments: {'firstname': 'Jim', 'lastname': 'Bean'});
                //Navigate to Screen 2
              },
            ),
          ],
        ),
      ),
    );
  }
}
