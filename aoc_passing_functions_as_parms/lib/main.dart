void main() {
  int result1 = add(3, 5);
  print('result1: $result1');
  int result2 = calculator1(4, 5, add);
  print('result2: $result2');
  int result3 = calculator2(4, 5, multipy);
  print('result3: $result3');

  //Here drive is set to slowdrive pointer to the
  //function. Notice no ().
  Car myCar1 = Car(drive: slowdrive);
  print('myCar1 is ${myCar1.drive}');
  //Here drive is set to the result of
  //calling the slowdrive function.
  //Notice the result is NULL.
  //slowdrive cannot return void.
  //Notice here we have () to call the function.
  Car myCar2 = Car(drive: slowdrive());
  print('myCar2 is ${myCar2.drive}');
  myCar1.wheels();
  myCar1.drive();
  myCar1.drive = fastdrive;
  myCar1.drive();
}

//Top level function not inside a class
int add(int n1, int n2) {
  return (n1 + n2);
}

//Top level function not inside a class
int multipy(int n1, int n2) {
  return (n1 * n2);
}

//Top level function passing another function as a parm.
int calculator1(int n1, int n2, Function calculation) {
  return calculation(n1, n2);
}

//Top level property
Function calculator2 = (int n1, int n2, Function calculation) {
  return calculation(n1, n2);
};

class Car {
  //Class member property that is a function.
  Function drive;
  //Class constructor with named parm that must be a function name.
  Car({this.drive});
  //Class member method.
  void wheels() {
    print('nice wheels');
  }
}

//Top level function, must be here
//if pointed to by class Car's drive property.
Object slowdrive() {
  print('driving slow');
  return null;
}

//Top level function.
void fastdrive() {
  print('driving fast');
}
