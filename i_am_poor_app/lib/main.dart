import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text("I am poor"),
        backgroundColor: Colors.pink[900],
      ),
      body: Center(
        child: Image(image: NetworkImage('https://www.pinclipart.com/picdir/big/14-142143_stone-cartoon-clipart-stone-clipart-free-png-download.png'),),
      ),
    ),
  ));
}
