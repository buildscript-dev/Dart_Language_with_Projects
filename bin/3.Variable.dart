

void main(){
  //Variable is a Container which stores the data in program...

  //We can declare a variable in multiple ways:

  //1. Explicit type -> We can tell Dart what type it will hold.

  int age = 20;
  String name = "BuildScript";
  double pi = 3.14;
  // Char symbol = '*';


 //2. var Keyword -> Immutable Variable like(val in kotlin)

  var city = "Bhilai"; // We can store values like String, Int, Boolean, etc.
  var year = 2025;
  // city = "Champa"   //But cann't reassigne it...


  //3. dynamic Keyword -> Mutable Variable like(var in kotlin)

  var userName = "BuildScript";
  userName = "NothingStrix";
  userName = "MadaraUchiha";
  print(userName);


  //4. final Keyword -> Value can be set only once (immutable after assignment).

  final country = "India";
  // country = "USA"; // Error


  //final → value set at runtime, then fixed.
  // const → value fixed at compile-time.


  //5. const Keyword -> Value is a compile-time constant (fixed forever).
  const gravity = 9.8;
  // gravity = 3.14; // Error


  //6. late Keyword -> Tells Dart: “I’ll assign this variable later (before use).”
  late int phoneNumber;
  phoneNumber = 0123456789;

  late bool isEmployed;
  isEmployed = false;


  //7. Nullable variables (?) -> Allows null value then Add ? to make them nullable.
  int? spicies = null; //By default, variables cannot hold null.
  String? realName;

  print(realName);
}