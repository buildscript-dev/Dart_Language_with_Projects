
import 'dart:io';

String DeleteTask() {
  stdout.write("Enter the task to delete: ");
  String? deleteTask = stdin.readLineSync() ?? "";


  return deleteTask;
}

