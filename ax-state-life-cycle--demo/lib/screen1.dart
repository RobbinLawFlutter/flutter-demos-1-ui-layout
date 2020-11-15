import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    print('Screen1 initState Called');
  }
  @override
  void deactivate(){
    super.deactivate();
    print('Screen1 deactivate Called');
  }

  @override
  Widget build(BuildContext context) {
    print('Screen1 build Called');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('Go To Screen 2'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/second',
            );
          },
        ),
      ),
    );
  }
}
