import 'package:flutter/material.dart';
import 'const.dart';

class users extends StatefulWidget {
  static final String ScreenId = "User";
  @override
  _Users createState() => _Users();
}

class _Users extends State<users> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        //Here is the preferred height.
        preferredSize: Size.fromHeight(40.0),
        child: SafeArea(child: AppBar(title: Text("USERS"))),
      ),
      body: Center(child: Text('My Page!')),
      drawer: Constn(),
    );
  }
}
