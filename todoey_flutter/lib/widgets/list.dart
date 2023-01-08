import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'listTitle.dart';
import 'package:provider/provider.dart';

class ListTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,textData,child){
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          itemBuilder: (context, index) => ListTitle(

            callBackFirst:textData.tasks[index].isDone,
            titleName: textData.tasks[index].taskTitle,
            callBack: (callBack){
              textData.updateTasks(textData.tasks[index]);
            },
            longPressCallBack: (){
              textData.delete(textData.tasks[index]);
            },
          ),
          itemCount: textData.taskCount,
        );
      },

    );
  }
}
