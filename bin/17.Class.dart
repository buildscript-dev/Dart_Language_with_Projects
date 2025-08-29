



// class is like a blueprint or template that defines what an object will look like and how it will behave.

// Declaring a Class
class className{
  // <fields (variables / properties)> -> Store data about the object.
  // <getters/setters> -> Special methods to read (get) or update (set) private data.
  // <constructors> -> Special methods used to create (initialize) objects.
  // <functions> -> Define the behavior/actions of the class.
}

// Objects are actual instances created from classes, each with their own state and behavior.
// The Cascade operator (..)
// var obj_name = new className();

// constructor in Dart is a special function inside a class that is automatically called when an object is created.

class Car{
  //constructor
  Car(String brand){ // The constructor has the same name as the class.
    print("Hey, $brand");
  }
  // When you create an object, Dart automatically calls the constructor.
}

// Types:
//1. Default Constructor → No parameters
//2. Parameterized Constructor → Accepts values
//3. Named Constructor → Multiple constructors with different names
class Person{

  Person(){
    print("Hey, I'm Person");
  }

  Person.namedGuest(String name){
    print("Hey, I'm $name");
  }
}

//4. Constant Constructor → Creates compile-time constants


void main(){
  Person personObj = new Person();
  Person personGuestObj = new Person.namedGuest("Guest");

  Student student = new Student("BuildScript", 20);
  student.display();

  Register owner = Register();
  owner.plot = "Green Valley";
  owner.showPlot();
}



//this keyword is a special reference variable that refers to the current object (instance) of the class.

//You use this when you want to:
//1. Differentiate between class properties and local variables (when names are the same).
//2. Pass the current object to another method or constructor.
//3. Call another constructor in the same class (constructor redirection).

class Student{
  String name;
  int age;

  // Short constructor (no need for "this.name = name; this.age = age;")
  Student(this.name, this.age);

  void display() {
    print("Hey, $name... You're $age years old");
  }
}

// Getters and Setters, also called as accessors and mutators, allow the program to initialize and retrieve the values of class fields.

// Getter
// ReturnType get propertyName {
//   return value;
// }

// Setter
// set propertyName(Type value) {
//   field = value;
// }

class Register{
  String _plot = "";

  //Getter
  String get plot => _plot;

  //Setter
  set plot(String newPlot){
    _plot = newPlot;
  }

  void showPlot(){
    print("Hey, $plot is your now...");
  }

}