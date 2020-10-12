//Video explaining .map() and .toList() from net ninja.
//https://www.youtube.com/watch?v=_AC90CiDoKA&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=17

//Iterables
//https://dart.dev/codelabs/iterables

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
    print(
        'First Mr. ${element.firstName}, ${element.lastName} age ${element.age}');
  });
  //Using the List.map() method to create a view of transformed data
  //made up from the objects in the people list.
  //Here we are creating a string made up from the Person property
  //data of each object in the people list.
  //We are using an anonymous function with
  //the lambda operator as a short cut
  //so we do not need the {} or the return.
  //The .map() returns an Iterable
  var view = people
      .map((n) => 'Second Mr. ${n.firstName} ${n.lastName} age ${n.age}.');
  print(view);
  //Here we are using a anonymous function without the lambda
  //but now we have to include {} and a return.
  var view1 = people.map((n) {
    return 'Third Mr. ${n.firstName} ${n.lastName} age ${n.age}.';
  });
  print(view1);
  //The .toList() converts the Iterable view into a list.
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
