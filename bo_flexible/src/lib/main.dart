import 'package:flutter/material.dart';

//flexible widget of the week
//https://www.youtube.com/watch?v=CI7x0mAZiY0&list=LLidCa21ZCJRTHUXUgg0OVSQ&index=340

//Flexible takes only the needed space when using tight fit but acts
//like expanded when using loose fit (default), and Expanded takes all
//available space, respecting the flex factor.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Flexible Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Container(
          height: 550,
          width: 300,
          color: Colors.white,
          child: Column(
            children: [
              Flexible(
                flex: 3,
                //loose fit is the default.
                //The container only takes what it needs,
                //starting from the top.
                //fit: FlexFit.loose,
                //tight fit means size to fit parent.
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue,
                    ),
                    child: Image(
                      image: AssetImage('images/bottle.jpg'),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                //loose fit is the default.
                //The container only takes what it needs,
                //starting from the top.
                //fit: FlexFit.loose,
                //tight fit means size to fit parent.
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.yellow,
                    ),
                    child: Image.asset('images/bottle.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
