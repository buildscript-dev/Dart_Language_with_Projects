

//Generics in Dart mean writing code that can work with different data types, while still being type-safe.
//Used in Lists, Maps, Classes, and Methods.

//Why Use Generics?

//1. Type safety → Prevents runtime errors.
//2. Code reusability → Write once, use for many data types.
//3. Cleaner code → No need for multiple versions of the same class/method.
//
// main(){
//
//   List<String> names = []; // Only Strings allowed
//   names.add("BuildScript");
//   names.add("Ravi");
// // names.add(10); ❌ Compile-time error
//
//   for (var name in names) {
//     print(name.toUpperCase()); // Safe
//   }
// }

class Box<T> {
  T value;

  Box(this.value);

  void show() {
    print("Value: $value");
  }
}

void main() {
  var intBox = Box<int>(100);
  intBox.show(); // Value: 100

  var strBox = Box<String>("Hello Dart");
  strBox.show(); // Value: Hello Dart
}

// Here, <T> acts like a placeholder for data type.