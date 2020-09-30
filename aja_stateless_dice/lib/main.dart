import 'package:flutter/material.dart';

//Dart is a Statically Typed Language
//int myInt = 123;
//string myString = 'Hello'; notice single quotes in dart
//double myDouble = 12.3;
//bool myBool = true;
//These all produce static types with initialization
//int myInt2;
//This produces a static int type even with no init.
//A variable can be made dynaically typed with the keyword dynamic
//dynamic myDynamic;
//myDynamic = 123;
//myDynamic = 'Hello';
//var myDynamic2;
//This produces a dynamic type as no initiaizaiton has occured.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: Text("Statefull Widgets"),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatelessWidget {
  //We cannot put vars here (unless we mark them final)
  //because a stateless widget is imutable (can't change)
  //int myLeftDiceNumber = 1;

  void reactToButtonPress() {
    print('Our left button was pressed');
  }

  @override
  Widget build(BuildContext context) {
    //If we change these numbers and hotreload the images will update
    int leftDiceNumber = 2;
    var rightDiceNumber = 1;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              //This will not work as it is trying to call the method
              //when flutter is building the UI.
              //onPressed: reactToButtonPress(),

              //This will work as it is a pointer to the named method
              //This method has to return void and cannot take args.
              // onPressed: reactToButtonPress,

              //Signature for a voidcallback also called in some
              //languages anonymous functions.
              //A function with no name and in this case no parms
              //When flutter builds the UI
              //it does not run the function but attaches a pointer
              //to the function to the onPressed property.
              //The code inside the anonymous function is run
              //only when the button is pressed.
              onPressed: () {
                print('Left button got pressed');
                print('leftDiceNumber = $leftDiceNumber');
              },

              //string interpolation with $
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Right button got pressed');
                print('rightDiceNumber = $rightDiceNumber');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
