// This is where the app starts executing.
main() {
  print('This is our first Dart App');
  // Declare and initialize a variable.
  var number = 42;
  // Call a function with one argument.
  printInteger(number);
}

// Define a function with one parameter.
printInteger(int aNumber) {
  // Print to console using string interpolation.
  print('The number is $aNumber.');
}
