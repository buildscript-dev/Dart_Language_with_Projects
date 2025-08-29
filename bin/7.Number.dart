void main(){

  // int var_name;      // declares an integer variable
  int num1 = 1;
  print(num1);
  // double var_name;   // declares a double variable
  double num2 = 1.1;
  print(num2);


  // Parsing is process of converting a value from one data type to another, usually from a String to a number, or vice versa.
  String src = "123";
  int num = int.parse(src);
  print(num);

  String str = "3.14";
  double douNum = double.parse(str);
  print(douNum);

  int age = 18;
  String strAge = age.toString();  //Converting from int to String
  print("My age is $age");


  // Safe Parsing with tryParse:

  // Sometimes the string may not be a valid number, which causes errors with parse().
  // Use tryParse() to avoid exceptions:
  String safeParse = "ABC";
  int? safeInt = int.tryParse(safeParse);
  if(safeInt == null){
    print("Invalid safeParse");
  }
  else{
    print("Yep the SafeInt we got is $safeInt");
  }


/*
   Common num properties (for both int and double)

isFinite → true if the number is finite

isInfinite → true if the number is infinity (double.infinity)

isNaN → true if the number is Not a Number (0/0)

isNegative → true if the number is negative

sign → -1, 0, or 1 depending on sign

hashCode → hash code for using in sets/maps

runtimeType → type at runtime (int or double)

  Extra int properties

bitLength → number of bits needed to represent the value

isEven → true if the number is even

isOdd → true if the number is odd

  Extra double properties

isFinite, isInfinite, isNaN, isNegative (same as num)

sign (same as num)

hashCode, runtimeType
*/


  int x = -42;
  double y = 3.14;

  // Properties (members that describe the number)
  print(x.isEven);       // true
  print(y.isFinite);     // true

  // Methods (members that do something)
  print(x.abs());        // 42
  print(y.round());      // 3

  // Operators (also members)
  print(x + 10);         // -32   (calls x.+(10))
  print(y * 2);          // 6.28  (calls y.*(2))

  //Methods of num
  // Method	              Returns	         Description
  // abs()	              num	             Absolute value (removes sign).
  // ceil()	              int	             Smallest integer ≥ number.
  // ceilToDouble()	      double	         Same as ceil(), but returns double.
  // clamp(lower, upper)	num	             Restrict value to within [lower, upper].
  // compareTo(other)	    int	             Returns -1 if < other, 0 if ==, 1 if >.
  // floor()	            int	             Largest integer ≤ number.
  // floorToDouble()	    double	         Same as floor(), but returns double.
  // remainder(other)	    num	             Remainder after division.
  // round()	            int	             Rounds to nearest integer.
  // roundToDouble()	    double	         Same as round(), but returns double.
  // toDouble()	          double	         Converts to double.
  // toInt()	            int 	           Converts to int.
  // toString()	          String	         Converts to string.
  // truncate()	          int	             Drops fractional part (towards zero).
  // truncateToDouble()	  double	         Same as truncate(), but returns double.


}