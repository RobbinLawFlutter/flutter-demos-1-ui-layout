class Question {
  String qText;
  bool qAnswer;

//In this constructor it will work because
//the names in the parameter list (q and a) are different
//then the class property names qText and qAnswer
  // Question(String q, bool a) {
  //   qText = q;
  //   qAnswer = a;
  // }

//In this constructor we have to use the
//key word "this" as both the parameter
//and property names are the same.
  // Question(String qText, bool qAnswer) {
  //   this.qText = qText;
  //   this.qAnswer = qAnswer;
  // }

//In this constructor we use a short cut
//to place whatever args are passed directly
//into the properties. The parameter name has
//to be the same as the property name.
//Notice also no {} just ; at end of ()
  // Question(this.qText, this.qAnswer);

//NOTICE: in all of these contructors
//we are using positional parameters.

//We could also use named parameters

  Question({this.qText, this.qAnswer});
}
