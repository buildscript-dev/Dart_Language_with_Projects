void main(){
  /*

  //Single line strings are represented using single or double quotes.
  String  variable_name = 'value'
  OR
  String  variable_name = ''value''

  //Triple quotes are used to represent multi-line strings.
  String  variable_name = '''line1
  line2'''
  OR
  String  variable_name= ''''''line1
  line2''''
   */

  String str1 = 'this is a single line string';
  String str2 = "this is a single line string";
  String str3 = '''this 
is 
a 
multiline 
line 
string''';

  String str4 = """this 
is 
also 
multiline 
line 
string""";

  print(str1);
  print("");
  print(str2);
  print("");
  print(str3.trim());
  print("");
  print(str4);
  print("");


  //Joining one string with another is called concatenation (or interpolation).
  //1. Concatenation (using +)
  String first = "Hello";
  String second = "World";
  String concatenation = first + " " + second; // using +
  print(concatenation); // Hello World

  print("");

  //2. Interpolation (using $variable or ${expression})
  String interpolation = "$first $second"; // using interpolation
  print(interpolation); // Hello World

  //String Properties in Dart
/*
  | Property       | Type            | Description
  | -------------- | --------------- | ---------------------------------------------------------------------------------
  | **codeUnits**  | `Iterable<int>` | UTF-16 code units of the string.
  | **isEmpty**    | `bool`          | `true` if the string has length 0.
  | **isNotEmpty** | `bool`          | `true` if the string has one or more characters.
  | **length**     | `int`           | Number of UTF-16 code units in the string.
  | **runes**      | `Runes`         | Unicode code points of the string (handles emojis & special characters properly).
 */

 //



}

//Bool , Lists, Lists, Maps, Symbol. Runes.