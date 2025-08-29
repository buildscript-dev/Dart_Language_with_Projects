
import 'dart:io';

void main(){

  // Decision making allows your program to choose different actions based on certain conditions (true or false).
  // if statement
  // if-else statement
  // if-else-if ladder
  // switch statement
  // conditional (ternary) operator

  //1. if Statement -> Executes a block of code if the condition is true.

  int age = 20;
  if(age>=18){
    print("You are an adult...");
  }


  //2. if-else Statement -> Chooses between two options.

  stdout.write("Enter you name: ");
  String? name;
  name = stdin.readLineSync();
  if(name == null){
    print("Invalid Input");
  }
  else{
    print("Welcome, $name");
  }


  //3. if-else-if Ladder -> Handles multiple conditions.

  int marks = 85;

  if (marks >= 90) {
    print("Grade A");
  } else if (marks >= 75) {
    print("Grade B");
  } else if (marks >= 50) {
    print("Grade C");
  } else {
    print("Fail");
  }


  //4. switch Statement -> Used when you have multiple specific values to compare.
  stdout.write("Enter the day: ");
  String? input = stdin.readLineSync();
  int? day = int.tryParse(input ?? '');

  switch(day){
    case 1:
      print("Monday");
      break; //break → exits the switch.

    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default: //default → executed if no case matches.
      print("Invalid day");
  }
  if(day == null){
    print("Try again....");
  }
  else {
    print("So, Whats you plan to day?");
  }


  //5. Conditional (Ternary) Operator -> Short form of if-else.

  stdout.write("Enter you ID to vertify: ");
  String? userName = stdin.readLineSync();
  String verify = (userName == "BuildScript") ? "Verified as $userName" : "Unverified, Enter as Guest";

  print(verify);
  
  }