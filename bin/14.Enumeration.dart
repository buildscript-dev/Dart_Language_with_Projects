


  //Enum is a special data type that lets you define a set of constant values (a fixed list of options).
  //It’s useful when you need to represent choices, categories, or states.

  enum Day{
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday
  }


  void main(){
  Day today = Day.monday;

  if (today == Day.monday){
    print("Start of the week");
  }
  
  print(Day.values);
  print(Day.monday.index);
  print(Day.sunday.index);
  }

