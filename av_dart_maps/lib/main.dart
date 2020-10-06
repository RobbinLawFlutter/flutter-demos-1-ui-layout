//https://dart.dev/guides/language/language-tour#maps

Map<String, int> myAgeBook = {
  'Rob': 60,
  'Linda': 70,
  'Bob': 40,
  'James': 30,
};

// Maps often use strings as keys.
var hawaiianBeaches = {
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
}
