import 'dart:io';
import 'dart:math';


void main() {
//A loop is used to repeat a block of code multiple times until a condition is met.

//Types of Loops in Dart:

//1. For Loop -> Runs code a fixed number of times (when you know the limit).

  for (int i = 1; i <= 5; i++) {
    print("Count: $i");
  }


//2. for-in loop -> Used to loop over collections like List, Set.
  var number = [10, 20, 30];
  for (var n in number) {
    print("Numbers are $n");
  }


  //3. forEach loop -> Another way to loop through collections using functions.
  var names = ["BuildScript", "NothingStrix", "MadaraUchiha"];
  names.forEach((n) {
    print("The Present Winners are: $n");
  });


  //4. while loop -> Repeats as long as condition is true (condition checked first).
  //Asking for user input
  stdout.write("Enter Your Number: ");

  //Read input from console
  String input = stdin.readLineSync() ?? '';

  // Convert to int
  int num = int.tryParse(input) ?? 0;

  while (num <= 100) {
    print("Step to $num");
    num++;
  }


  //5. do-while loop -> Similar to while, but condition is checked after execution (runs at least once).
  String enterName;
  do {
 stdout.write("Enter Your Name: ");
    enterName = stdin.readLineSync() ?? '';
  }
  while (enterName != "BuildScript");

  print("You entered $enterName is correct, loop ended!");

  //6. Control statements in loops

  // break → exit the loop completely.
  // continue → skip current iteration and go to the next.
  int age = 0;
  var random = Random();
  print("Baby, Just Born");
  while (age <= random.nextInt(70+1)) {
    print("Age after a year: $age");
    age++;
    if(age == random) break;
  }
  
  print("The Baby died at $age");
}


/*
          Summary

  for	     -> Fixed number of iterations
  for-in	 -> Iterating over collections
  forEach	 -> Functional style iteration
  while	   -> Repeat until condition false (check first)
  do-while ->	Repeat until condition false (check last)
  break	   -> Exit loop early
  continue -> Skip current step


 */