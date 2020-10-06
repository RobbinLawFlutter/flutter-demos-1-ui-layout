void main() {
  int result1 = add(3, 5);
  print('result1: $result1');
  int result2 = calculator1(4, 5, add);
  print('result2: $result2');
  int result3 = calculator2(4, 5, multipy);
  print('result3: $result3');
  Car myCar1 = Car(drive: slowdrive);
  print('myCar1 is ${myCar1.drive}');
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
}

//Top level function.
void slowdrive() {
  print('we are now driving slow');
}

//Top level function.
void fastdrive() {
  print('we are now driving fast');
}
