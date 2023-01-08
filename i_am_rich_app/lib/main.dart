import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("I AM RICH")),
      body: Center(
        child: Image(
            image:
                NetworkImage('https://images.unsplash.com/photo-1500485035595-cbe6f645feb1?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
          //AssetImage('images/diamond.png'),
             ),
      ),
    )),
  );
}
