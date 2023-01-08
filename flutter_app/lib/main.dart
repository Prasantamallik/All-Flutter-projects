import 'package:flutter/material.dart';
import 'package:flutter_app/DashBoard.dart';
import 'package:flutter_app/Login.dart';
import 'package:flutter_app/orders.dart';
import 'package:flutter_app/resturants.dart';
import 'package:flutter_app/users.dart';

import 'Registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Login.ScreenId,
      routes: {
        Login.ScreenId: (context) => Login(),
        Registration.ScreenId1: (context) => Registration(),
        DashBoard.ScreenId: (context) => DashBoard(),
        users.ScreenId: (context) => users(),
        Orders.ScreenId: (context) => Orders(),
        Resturants.ScreenId: (context) => Resturants(),
      },
    );
  }
}
