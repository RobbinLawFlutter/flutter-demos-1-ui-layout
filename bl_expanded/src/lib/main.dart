import 'package:flutter/material.dart';

//Expanded Widget of the Week by the flutter team
//https://www.youtube.com/watch?v=_rnZaagadyo

//expanded widget by RetroStudio
//https://www.youtube.com/watch?v=a-jbBVAB5o0&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=12

//We can use the Expanded Widget with the Padding Widget
//and the Container Widget to stretch the Container Widgets
//as per the flex value.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Expanded Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                  ),
                  child: const Image(
                    image: AssetImage('images/bottle.jpg'),
                  ),
                ),
              ),
            ),
            Container(
              height: 100.0,
              width: 100.0,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.cyan,
              ),
              child: const Image(
                image: AssetImage('images/bottle.jpg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.yellow,
                  ),
                  child: Image.asset('images/bottle.jpg'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                  child: Image.asset('images/bottle.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
