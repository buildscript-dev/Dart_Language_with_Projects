import 'dart:io';

void main() {
  while (true) {
    stdout.write("Enter Num1 (or type 'exit'): ");
    String? input1 = stdin.readLineSync();
    if (input1 == "exit") break;

    num num1;
    if (input1!.contains(".")) {
      num1 = double.parse(input1);
    } else {
      num1 = int.parse(input1);
    }

    stdout.write("Enter Num2 (or type 'exit'): ");
    String? input2 = stdin.readLineSync();
    if (input2 == "exit") break;

    num num2;
    if (input2!.contains(".")) {
      num2 = double.parse(input2);
    } else {
      num2 = int.parse(input2);
    }

    OperatorCondition(num1, num2);
  }
}

void OperatorCondition(num num1, num num2) {
  while (true) {
    stdout.write("Enter operator (+, -, *, /, %): ");
    var operator = stdin.readLineSync();

    switch (operator) {
      case "+":
        print("Result: ${num1 + num2}");
        return;
      case "-":
        print("Result: ${num1 - num2}");
        return;
      case "*":
        print("Result: ${num1 * num2}");
        return;
      case "/":
        print("Result: ${num1 / num2}");
        return;
      case "%":
        print("Result: ${num1 % num2}");
        return;
      default:
        print("Invalid Operator");
        print("Try Again");
    }
  }
}
