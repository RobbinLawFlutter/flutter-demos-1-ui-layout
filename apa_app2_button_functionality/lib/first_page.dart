import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  bool _enabled = false;
  String _msg1 = '';

  @override
  Widget build(BuildContext context) {
    Object onPressed1() {
      if (_enabled) {
        setState(() {
          _msg1 = 'Enabled';
        });
        print('onPressed1 returning address of anon func but NOT running it');
        return () {
          print('Anon func now running as button pressed');
        };
      } else {
        setState(() {
          _msg1 = '';
        });
        print('onPressed1 returning NULL');
        return null;
      }
    }

    Object onPressed2() {
      if (_enabled) {
        print(
            'onPressed2 returning the result of running the anonymous function');
        return () {
          print('Anon func now running');
        }();
      } else {
        print('onPressed2 returning NULL');
        return null;
      }
    }

    print('The build is being RUN');

    return Scaffold(
      appBar: AppBar(
        title: Text('Button Functionality Demo'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('enable functionality'),
                Switch(
                    value: _enabled,
                    onChanged: (bool onChangedValue) {
                      print('onChangedValue is $onChangedValue');
                      _enabled = onChangedValue;
                      setState(() {
                        if (_enabled) {
                          _msg1 = 'Enabled';
                          print('_enabled is true');
                        } else {
                          _msg1 = '';
                          print('_enabled is false');
                        }
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 8,
                    textColor: Colors.red.shade100,
                    color: Colors.redAccent,
                    highlightColor: Colors.blue,
                    splashColor: Colors.green.shade300,
                    padding: EdgeInsets.all(20.0),
                    onPressed: onPressed1(),
                    child: Text(_msg1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
