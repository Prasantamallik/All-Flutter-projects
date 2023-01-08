import 'package:flutter/material.dart';
import 'const.dart';

class Orders extends StatefulWidget {
  static final String ScreenId = "order";
  @override
  _Orders createState() => _Orders();
}

class _Orders extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        //Here is the preferred height.
        preferredSize: Size.fromHeight(40.0),
        child: SafeArea(child: AppBar(title: Text("ORDERS"))),
      ),
      body: Center(child: Text('My Page!')),
      drawer: Constn(),
    );
  }
}
