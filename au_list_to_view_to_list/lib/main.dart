class Person {
  String firstName;
  String lastName;
  int age;

  Person(this.firstName, this.lastName, this.age);
}

void main() {
  List people = List();
  //The list called people is a list of
  //Person objects. Here we are adding two objects to the list.
  people.add(Person("Joe", "Smithers", 55));
  people.add(Person("Patrick", "Thomas", 45));
  print(people);
  //Printing the properties of each object (Person) in the people list.
  people.forEach((element) {
    print('Hey ${element.firstName}, ${element.lastName} age ${element.age}');
  });
  //Using the List.map() method to create a view of transformed data
  //made up from the objects in the people list.
  //Here we are creating a string made up from the Person property
  //data of each object in the people list.
  var view =
      people.map((n) => 'Mr. ${n.firstName} ${n.lastName} age ${n.age}.');
  print(view);
  var listFromView = view.toList();
  print(listFromView);
  log('The following are the elements in the view', view);
  log('The following are the elements in the listFromView', listFromView);
  //We can do both steps to create a new list all at once.
  var newList = people
      .map((e) => 'Hey There ${e.firstName} are you age ${e.age}?')
      .toList();
  print(newList);
  log('The following are the elements of newList', newList);
}

void log(String message, var lst) {
  print(message);
  lst.forEach((n) => print(n));
}
