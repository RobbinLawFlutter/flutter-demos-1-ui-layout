//https://dart.dev/guides/language/language-tour#maps

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

// Maps can be built from a constructor.
// Maps are parameterized types; you can specify what
// types the key and value should be.
var nobleGases = Map<int, String>();

void main() {
  print(myAgeBook['Bob']);
  print(myAgeBook['Jim']);
  myAgeBook['Tim'] = 20;
  print(myAgeBook.length);
  print(myAgeBook.keys);
  print(myAgeBook.values);
  print(hawaiianBeaches.keys);
  print(hawaiianBeaches.values);
  print(hawaiianBeaches['Big Island']);
  print(hawaiianBeaches['Oahu'][1]);
}
