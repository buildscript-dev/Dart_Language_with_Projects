

void main(){


  // An operator is a special symbol (like +, -, *, /, ==) used to perform an operation on values or variables.

  // Operands − Represents the data
  // Operator − Defines how the operands will be processed to produce a value.
  // "2 + 3". In this expression, 2 and 3 are operands and the symbol "+" (plus) is the operator.


  // Types of Operators in Dart

  //1. Arithmetic Operators -> Used for basic Math.
  int a = 10, b = 3;
  print(a + b); // 13
  print(a - b); // 7
  print(a * b); // 30
  print(a / b); // 3.333...
  print(a ~/ b); // 3 (integer division)
  print(a % b); // 1 (remainder)
  print(a++);
  print("Increment: $a");// 11 (Post-Increment)
  print(a--);
  print("Decrement: $a");// 10 (Post-Decrement)


  //2. Relational (Comparison) Operators -> Used to compare values → result is true or false.
  int x = 5, y = 10;
  print(x == y); // false (equal)
  print(x != y); // true (not equal)
  print(x > y);  // false
  print(x < y);  // true
  print(x >= 5); // true
  print(y <= 10); // true


  //3. Type test Operators -> These operators are handy for checking types at runtime.
  int num = 567;
  print(num is int); //True if the object has the specified type
  
  String work = "Build";
  print(work is! int); //False if the object has the specified type
  

  //4. Logical Operators -> Work with bool values.
  bool t = true, f = false;
  print(t && f); // false (AND)
  print(t || f); // true  (OR)
  print(!t);     // false (NOT)


  //5. Assignment Operators -> Assign values to variables.
  int n = 10;
  n += 5; // n = n + 5 → 15
  n -= 3; // n = n - 3 → 12
  n *= 2; // n = n * 2 → 24
  n ~/= 4; // n = n ~/ 4 → 6
  n %= 5;  // n = n % 5 → 1


  //6. Unary Operators -> Operate on a single operand.
  int m = 5;
  print(-m);   // -5 (negation)
  print(++m);  // 6 (pre-increment → increases before use)
  print(m++);  // 6 (post-increment → uses, then increases)
  print(--m);  // 6 (pre-decrement)
  print(m--);  // 6 (post-decrement)


  //7. Conditional (Ternary) Operator -> Short if-else.
  int age = 18;
  String result = (age >= 18) ? "Adult" : "Minor";
  print(result); // Adult

  String userName = "BuildScript";
  String output = (userName == "BuildScript") ? "Welcome, $userName" : "Fuck Off, Buddy";
  print(output); // Welcome, BuildScript


  //8. Null-aware Operators -> Special operators for handling null.
  String? name;

// ?? → provides default value if null
  print(name ?? "Guest"); // Guest

// ??= → assign value only if variable is null
  name ??= "BuildScript";
  print(name); // BuildScript


  //9. Bitwise Operators -> Work on binary (bit-level).
  /*
  int a = 5; // 0101
  int b = 3; // 0011

  print(a & b);  // 1  (AND → 0001)
  print(a | b);  // 7  (OR → 0111)
  print(a ^ b);  // 6  (XOR → 0110)
  print(~a);     // -6 (NOT)
  print(a << 1); // 10 (left shift)
  print(a >> 1); // 2  (right shift)
  */

  /*
Summary

Arithmetic → + - * / % ~/

Relational → == != > < >= <=

Logical → && || !

Assignment → = += -= *= ~/= %=

Unary → ++ -- -

Type Test → is, is!

Conditional → ?:

Null-aware → ?? ??=

Bitwise → & | ^ ~ << >>
* */
  
}