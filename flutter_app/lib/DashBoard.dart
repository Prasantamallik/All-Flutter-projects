import 'package:flutter/material.dart';
import 'const.dart';

class DashBoard extends StatefulWidget {
  static const ScreenId = "DashBoard";
  @override
  State<StatefulWidget> createState() => _Dashboard();
}

class _Dashboard extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        //Here is the preferred height.
        preferredSize: Size.fromHeight(40.0),
        child: SafeArea(child: AppBar(title: Text("DASHBOARD"))),
      ),
      body: Center(child: Text('My Page!')),
      drawer: Constn(),
    );
  }
}
