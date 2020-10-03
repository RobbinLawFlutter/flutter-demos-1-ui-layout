import 'package:flutter/material.dart';

//This class demonstrates the use of different
//constructors as well as prefered ways of
//passing args into the class via the constructors.
class Question {
  String qText;
  bool qAnswer;

//In this default constructor it will work because
//the names in the parameter list (q and a) are different
//then the class property names qText and qAnswer
  Question(String q, bool a) {
    qText = q;
    qAnswer = a;
  }

//In this constructor we have to use the
//key word "this" as both the parameter
//and property names are the same.
  Question.usingThis(String qText, bool qAnswer) {
    this.qText = qText;
    this.qAnswer = qAnswer;
  }

//In this constructor we use a short cut
//to place whatever args are passed directly
//into the properties. The parameter name has
//to be the same as the property name and using this keyword.
//Notice also no {} just ; at end of (parms).

  Question.positionalParameters(this.qText, this.qAnswer);

//NOTICE: in all of these previous contructors
//we are using positional parameters.

//We could also use named parameters.
//This is the preferred way if lots of parms.
//Also notice @required means that these args have to
//be included in the constructor.
//@required is a flutter decorator NOT dart, so we need
//to import the flutter package here.

  Question.namedParamters({@required this.qText, @required this.qAnswer});
}
