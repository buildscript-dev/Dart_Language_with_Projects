void main(){


// Dart Data Types:-


//1.int → Stores whole numbers without decimals.
  int age = 20;
  int rank = 101;

// double → Stores numbers with decimal points (floating values).
  double pi = 3.14;
  double weight = 78.456;

// num → General type for both int and double.
  num score = 99;
  num height = 5.11;


// String → Stores text (sequence of characters).
  String name = "BuildScript";
  String job = "Dev";


// bool → Stores logical values: true or false.
  bool isAlive = true;
  bool isAline = false;


// char -> Don't Exist here... we replaced it with String
//  char symbol = '*' Error
//  Char symbol = '*' Error Again
    String symbol = '*'; // Only Possible Way


// List → Ordered collection of elements (like arrays).
  List<int> nums = [1, 2, 3];
  List strings = ["BuildScript", "NothingStrix", "MadaraUchiha"];


// Set → Unordered collection of unique elements.
  Set<String> fruits = {"apple", "banana"};
  Set vegetables = {"potato", "tomato", "brokali"};


// Map → Stores key–value pairs (like a dictionary).
  Map<String, int> marks = {"Math": 90};
  Map recipe = {"Pasta": "Home Chef", "Noodles": "Maggi"};

// Null / Nullable → Represents no value or absence of data.
  int? amount = null;
  String? userName = null;


// var → Variable whose type is inferred by the compiler.
  var x = 10; //(becomes int)
  var email = 'heymail@gmail.com!';

// dynamic → Variable that can change type at runtime.
  dynamic y = 10;
  y = "Hello"; // valid



}