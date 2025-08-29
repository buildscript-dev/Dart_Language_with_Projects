
void ViewTask(List<String> todo){
if(todo.isEmpty){
  print("No tasks yet.");
}
else {
  print("Your Todo List: ");
  for( int i = 0; i < todo.length; i++){
    print("➤ ${todo[i]}");
  }
}
  }