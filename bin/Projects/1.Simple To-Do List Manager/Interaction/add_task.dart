import 'dart:io';

List<String> AddTask() {
  List<String> tasks = [];

  while (true) {
    stdout.write("Add your task: ");
    stdout.write("➤ ");
    String? task = stdin.readLineSync();
    task = (task != null && task.isNotEmpty) ? task[0].toUpperCase() + task.substring(1) : task;

    if (task != null && task.isNotEmpty) {
      tasks.add(task);
    } else {
      print("Task cannot be empty. Try again.");
      continue;
    }

    // Ask if user wants to continue
    stdout.write("Do you want to add another task? (yes/no): ");
    String? response = stdin.readLineSync()?.toLowerCase();

    if (response == "no") {
      print("Data is Stored...");
      print("You can check the data");
      break;
    } else if (response == "yes") {
      // loop continues
      continue;
    } else {
      print("Invalid input. Please type 'yes' or 'no'.");
    }
  }

  return tasks;
}
