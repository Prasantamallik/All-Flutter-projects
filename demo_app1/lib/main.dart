import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.cyan,
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("this is a demo application from me"),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/i_am_rich_app_icon.png'),
            ),
          )),
    ),
  );
}
