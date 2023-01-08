import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
class AddTaskSheet extends StatelessWidget {
  String newTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only( topRight:Radius.circular( 20.0),topLeft:Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:
          [
            Text('Add Task',
            textAlign: TextAlign.center,
            style:TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value)
              {
                newTitle=value;
              },
            ),
            FlatButton(
              onPressed:(){
              print(newTitle);
                  Provider.of<TaskData>(context,listen: false).addItems(newTitle);
                  Navigator.pop(context);
            },
              child:
            Text('Add',style:
              TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),),
            color: Colors.lightBlueAccent,)
          ],
        ),
      ),
    );
  }
}
