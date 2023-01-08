import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final bool callBackFirst;
  final String titleName;
  final Function callBack;
  final Function longPressCallBack;
  const ListTitle(
      {this.callBackFirst,
      this.titleName,
      this.callBack,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        titleName,
        style: TextStyle(
            decoration: callBackFirst ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: callBackFirst,
        onChanged: callBack,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
