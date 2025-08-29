

//A class inherits from another class using the extends keyword. Child classes inherit all properties and methods except constructors from the parent class.

// Syntax:
// class child_class_name extends parent_class_name

class Shape{

  void shapeOfMe(){
    print("Yoo, I'm unshaped");
  }
}

class Circle extends Shape {
  @override
  void shapeOfMe() {
    print("Yoo, I'm Circle");
  }
}

// void main(){
//   var shapeCircle = Circle();
//   shapeCircle.shapeOfMe();
//   shapeCircle.shapeOfMe();
// }



//The static keyword is used for class-level variables and methods.
// A static member belongs to the class itself, not to individual objects.
// You can access it without creating an object of the class.


//1. Static Variable → Shared by all objects of the class (one copy only).
class Student {
  static String schoolName = "ABC School"; // class-level variable
  String name;

  Student(this.name);

  void display() {
    print("Name: $name, School: $schoolName");
  }
}

// void main() {
//   Student s1 = Student("Build");
//   Student s2 = Student("Script");
//
//   s1.display();
//   s2.display();
//
//   // Accessing static variable without object
//   print(Student.schoolName);
// }

//2. Static Method → Can be called using the class name.
class MathUtils {
  static int square(int x) {
    return x * x;
  }
}

// void main() {
//   // No object needed
//   print(MathUtils.square(27)); // 25
// }



class Counter {
  static int count = 0;

  Counter() {
    count++;
  }
}
//
// void main(){
//   Counter c1 = Counter();
//   Counter c2 = Counter();
//   Counter c3 = Counter();
//   Counter c4 = Counter();
//   Counter c5 = Counter();
//   Counter c6 = Counter();
//   Counter c7 = Counter();
//   Counter c8 = Counter();
//   Counter c9 = Counter();
//
//   print("Total objects created: ${Counter.count}");
//
// }


// super keyword is used to refer to the parent class (superclass) from within a child class.

//You use super to:
//1. Call the parent class constructor.
//2. Access parent class methods or properties that are hidden/overridden in the child class

// Using super to Call Parent Constructor
class Person {
  String name;
  int age;

  Person(this.name, this.age); // parent constructor
}

class Gallery extends Person {
  String course;

  Gallery(String name, int age, this.course) : super(name, age);

  void display() {
    print("Name: $name, Age: $age, Course: $course");
  }
}

// void main() {
//   Gallery s = Gallery("BuildScript", 20, "Dart Programming");
//   s.display();
// }


//Using super to Call Parent Method
class Animal {
  void sound() {
    print("Some generic animal sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    super.sound(); // calling parent method
    print("Dog barks: Woof Woof!");
  }
}

// void main() {
//   Dog d = Dog();
//   d.sound();
// }

// 3. Using super to Access Parent Properties

class Vehicle {
  int speed = 60;
}

class Car extends Vehicle {
  int speed = 120;

  void showSpeed() {
    print("Car speed: $speed");       // child class speed
    print("Vehicle speed: ${super.speed}"); // parent class speed
  }
}

void main() {
  Car c = Car();
  c.showSpeed();
}
