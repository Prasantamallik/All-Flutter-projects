class Task{
  final String taskTitle;
  bool isDone;
  Task({this.isDone=false,this.taskTitle});
  void toggleDone()
  {
    isDone=!isDone;
  }
}