import 'dart:io';


void main(){
  UserWelcome();
}


//User, Welcome Screen...
Future<void>UserWelcome() async{

  print("Hello, User...");
  await Future.delayed(Duration(seconds: 3));
  print("Let's, Create you Password");
  await Future.delayed(Duration(seconds: 2));
  print("Let's, Start with your name...");
  stdout.write("Name: ");
  String? name = stdin.readLineSync().toString();
  name = name[0].toUpperCase() + name.substring(1).toLowerCase();
  print("Nice name, $name...");
await Future.delayed(Duration(seconds: 2));
  UserPasswordQuest();
}

Future<void>UserPasswordQuest()async {
  print("Tell me the lenght of password(like: 8, 12, 16)");
  stdout.write("Lenght: ");
  int? passLength = int.tryParse(stdin.readLineSync() ?? '');
  await Future.delayed(Duration(seconds: 1));
  print("Okay, Password Length will be total $passLength...");

  await Future.delayed(Duration(seconds: 2));
  print("What does it contain");
  print("➤Letter");
  print("➤Number");
  print("➤Symbol");
  print("➤All");
  print("➤You can Also enter multiple (e.g., Letter Number");
  final validOptions = ["Letter", "Number", "Symbol", "All"];
   while (true) {
     stdout.write("So, what you want ");
     String passContain = (stdin.readLineSync() ?? '').trim();
     if (passContain.isEmpty) {
       print("No input Password");
       return;
     }

     List<String> options = passContain
         .split(RegExp(r'\s+')) // split by spaces
         .map((word) =>
     word[0].toUpperCase() + word.substring(1).toLowerCase())
         .toList();

     bool allValid = options.every(validOptions.contains);

     if (allValid) {
       for (var option in options) {
         switch (options) {
           case "Letter":
             print("Okay, it will contain letters...");
             break;
           case "Number":
             print("Okay, it will contain numbers...");
             break;
           case "Symbol":
             print("Okay, it will contain symbols...");
             break;
           case "All":
             print("Okay, it will contain all of them...");
             break;
         }
       }
       print("Okay, it will contain ${options.join(", ")}...");
        break; // exit loop after valid input


     } else {
       print("Invalid choice(s): ${options.join(", ")}\nPlease try again.\n");      }
    }
  }