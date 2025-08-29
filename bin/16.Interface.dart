
// Interface is a contract that a class must follow.
// It defines a set of methods and properties that another class must implement.

// Simple Interface
abstract class Animal {
  void sound(); // abstract method (no body allowed)
}

class Cat implements Animal {
  @override
  void sound() {
    print("Meow!!!");
    print("Meow!!!");
  }
}

// Interface with Multiple Classes
abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() => print("Duck flying");

  @override
  void swim() => print("Duck swimming");
}


void main() {
  Cat cat = Cat();
  cat.sound(); // 2X Meow!!!

  Duck duck = Duck();
  duck.fly();
  duck.swim();
}
