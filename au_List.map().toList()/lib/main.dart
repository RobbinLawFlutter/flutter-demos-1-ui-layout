class Person {
  String firstName;
  String lastName;
  int age;

  Person(this.firstName, this.lastName, this.age);
}

void main() {
  List people = List();
  people.add(Person("Joe", "Smithers", 55));
  people.add(Person("Patrick", "Thomas", 45));
  var mappedNames = people.map((n) => 'Mr. ${n.firstName} ${n.lastName}');
  print(mappedNames);
  log(mappedNames);
}

void log(var lst) {
  lst.forEach((n) => print(n));
}
