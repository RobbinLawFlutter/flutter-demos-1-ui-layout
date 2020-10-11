class Customer {
  String name;
  int age;

  Customer(this.name, this.age);

  @override
  String toString() {
    return '{ ${this.name}, ${this.age} }';
  }
}

main(List<String> args) {
  Map map = {'Jack': 23, 'Adam': 27, 'Katherin': 25};

  var list1 = [];

  map.forEach((k, v) => list1.add(Customer(k, v)));
  print(list1);

  map.entries.forEach((e) => list1.add(Customer(e.key, e.value)));
  print(list1);

  list1 = map.entries.map((e) => Customer(e.key, e.value)).toList();
  print(list1);

  List list2 = [];
  list2.add(Customer('Jack', 23));
  list2.add(Customer('Adam', 27));
  list2.add(Customer('Katherin', 25));

  var map1 = Map.fromIterable(list2, key: (e) => e.name, value: (e) => e.age);
  print(map1);

  var map2 = {};
  list2.forEach((customer) => map2[customer.name] = customer.age);
  print(map2);

  var map3 = list2.map((e) => 'hey');
  print(map3);
}
