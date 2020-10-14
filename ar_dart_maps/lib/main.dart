//https://dart.dev/guides/language/language-tour#maps

//Maps are generic and both the key and value can be any type.
//
Map<String, int> myAgeBook = {
  'Rob': 60,
  'Linda': 70,
  'Bob': 40,
  'James': 30,
};
//We could use var here as well
//var hawaiianBeaches = {};
Map<String, List<String>> hawaiianBeaches = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
};

//Maps can be built from a constructor.
//Maps are parameterized types; you can specify what
//types the key and value should be explicitly.
var nobleGases = Map<int, String>();

void main() {
  //With this syntax the key is 'Bob' and the value is returned.
  print(myAgeBook['Bob']);
  //If key is not in the map a NULL is returned.
  print(myAgeBook['Jim']);
  //Adding a new key:value to the map.
  myAgeBook['Tim'] = 20;
  //Iterate thru the map.
  myAgeBook.forEach((key, value) {
    print('key is $key, value is $value');
  });
  //Common Map properties: length, keys, values, isEmpty, isNotEmpty
  print('myAgeBook Length is: ${myAgeBook.length}');
  print('myAgeBook Keys are: ${myAgeBook.keys}');
  print('myAgeBook Values are: ${myAgeBook.values}');
  print('myAgeBook isEmpty is: ${myAgeBook.isEmpty}');
  print('myAgeBook isNotEmpty is: ${myAgeBook.isNotEmpty}');
  //Common Map methods: remove, from, of,
  Map map = {1: 'one', 2: 'two', 3: 'three', 4: 'four', 5: 'five'};
  map.remove(2);
  print(map);

  map.removeWhere((k, v) => v.startsWith('f'));
  print(map);

  map.clear();
  print(map);

  var map2 = Map.from(myAgeBook);
  print(map2);

  var map3 = Map.of(myAgeBook);
  print(map3);

  print(hawaiianBeaches.keys);
  print(hawaiianBeaches.values);
  print(hawaiianBeaches['Big Island']);
  print(hawaiianBeaches['Oahu'][1]);

  //You can also allow for the key and value types to change
  //on the fly programatically.
  var planets = Map();

  planets[1] = 'Pluto';
  planets[4] = 'Jupiter';
  planets['this key is a string'] = 20;
  planets.forEach((key, value) {
    print(planets);
  });

  var map4 = {1: 'one', 2: 'two', 3: 'three'};

  var transformedMap = map4.map((k, v) {
    return MapEntry('($k)', v.toUpperCase());
  });

  print(transformedMap);
}
