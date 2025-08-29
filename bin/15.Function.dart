

// A function is a block of code that performs a specific task, can be reused, and may return a value.

// Syntax of a Function:
/*
returnType functionName(parameters) {
  // function body
  return value; // optional
}
 */

//1. Simple Function

void greet(){
  print("Hello, I'm Function");
}

//2. Function with Parameters

void greetUser(String name){
  print("Hello, $name");
}

//3. Function with Return Value

int add(int a , int b){
  return a + b;
}

//4. Arrow Function(Short-hand)
//Arrow Function is a more concise way to write a function when the function body contains only a single expression.
int square(int x) => x * x;

//5. Lambda Function -> Functions without names:

//Syntax
// There are two common forms of lambda functions in Dart:
//1. Block body (with curly braces):
// (parameters) {
// // function body
// }

//2. Shorthand (arrow function):
//(parameters) => expression;

void lambda(){

  //Lambda as a variable
  var greet = (String userName){
    return "Hello, $userName";
  };
  
  print(greet("BuildScript"));

  //Lambda in higher-order functions
  var number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var squared = number.map((n) => n * n);

  print(squared.toList());

  //Multi-line lambda
    var printMessage = (String msg) {
      print("Message: $msg");
      print("Length: ${msg.length}");
    };

    printMessage("Dart is fun!");

}



void main(){
  greet();
  greetUser("BuildScript");
  int result = add(10, 20);
  print("The Sum is $result");
  int squareResult = square(10);
  print("The Square is $squareResult");
  lambda();

}