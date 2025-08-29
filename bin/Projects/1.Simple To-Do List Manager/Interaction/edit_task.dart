import 'dart:io';

String EditTask(List<String> todo) {
  stdout.write("Enter part of the task you want to edit: ");
  String? oldTask = stdin.readLineSync();

  if (oldTask == null || oldTask.isEmpty) {
    return "Invalid task name.";
  }

  // Normalize input (case-insensitive search)
  oldTask = oldTask.toLowerCase();

  // Find first task that contains or starts with the input
  int index = todo.indexWhere((task) => task.toLowerCase().contains(oldTask!));

  if (index == -1) {
    return "Task not found in the list.";
  }

  stdout.write("Enter the new task name: ");
  String? newTask = stdin.readLineSync();

  if (newTask == null || newTask.isEmpty) {
    return "Invalid new task.";
  }

  // Capitalize new task
  newTask = newTask[0].toUpperCase() + newTask.substring(1);

  String old = todo[index];
  todo[index] = newTask;

  return "Task '$old' updated to '$newTask'.";
}
