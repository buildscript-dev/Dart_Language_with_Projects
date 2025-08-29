import 'dart:io';
import '../Interaction/add_task.dart';
import '../Interaction/delete_task.dart';
import '../Interaction/edit_task.dart';
import '../Interaction/exit_task.dart';
import '../Interaction/view_task.dart';

// Welcome The User...
Future<void> welcomeUser() async {
  print("Welcome to Todo List,");
  await Future.delayed(Duration(seconds: 3));
  print("Track Your Tasks: ");
  await Future.delayed(Duration(seconds: 1));
}

// TodoList
Future<void> todoList() async {
  await welcomeUser();
  List<String> todo = [];

  while (true) {
    stdout.write("\nEnter Your Operation (ADD / DELETE / VIEW / EDIT / EXIT): ");
    String? interaction = stdin.readLineSync()?.toUpperCase();

    switch (interaction) {
      case "ADD":
        todo.addAll(AddTask());
        break;

      case "DELETE":
        todo.remove(DeleteTask());
        break;

      case "VIEW":
        ViewTask(todo);
        break;

      case "EDIT":
        EditTask(todo);
        break;

      case "EXIT":
        ExitTask();
        return; // stop the loop

      default:
        print("Invalid");
        break;
    }
  }
}


Future<void> main() async {
  await todoList();
}


