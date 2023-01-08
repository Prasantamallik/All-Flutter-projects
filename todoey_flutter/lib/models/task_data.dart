import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier
{
  List<Task> _task = [
    Task(taskTitle: 'Buy Milk'),
    Task(taskTitle: 'Buy Egg'),
    Task(taskTitle: 'Buy Bread'),
  ];
UnmodifiableListView<Task>  get tasks
  {
return UnmodifiableListView(_task);
}
int get taskCount
{
  return _task.length;
}
void addItems(String newTitle)
{
  _task.add(Task(taskTitle: newTitle));
  notifyListeners();
}
void updateTasks(Task task)
{
  task.toggleDone();
  notifyListeners();
}
void delete(Task task)
{
  _task.remove(task);
  notifyListeners();
}
}