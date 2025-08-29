
// An asynchronous function runs without blocking the main thread.
// It allows you to wait for long operations (like API calls, file reading, timers) while the rest of the program continues running.

//Syntax:
import 'dart:ffi';
import 'dart:io';

Future<void> myFunction() async {
  // async body
}
// async → marks the function as asynchronous.
// await → pauses execution until the Future is completed.

Future<void> myPresence() async{
  print("I'm the Ghost of Uchiha....");
  await Future.delayed(Duration(seconds: 3) ); // simulating network delay
  stdout.write("Madara");
  await Future.delayed(Duration(seconds: 2) );
  stdout.write(" Uchiha");
}

void main() {
  myPresence();
}