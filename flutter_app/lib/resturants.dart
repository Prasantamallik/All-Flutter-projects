import 'package:flutter/material.dart';
import 'const.dart';

class Resturants extends StatefulWidget {
  static final String ScreenId = "Resturants";
  @override
  _Resturant createState() => _Resturant();
}

class _Resturant extends State<Resturants> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        //Here is the preferred height.
        preferredSize: Size.fromHeight(40.0),
        child: SafeArea(child: AppBar(title: Text("Resturants"))),
      ),
      body: Center(child: Text('My Page!')),
      drawer: Constn(),
    );
  }
}
