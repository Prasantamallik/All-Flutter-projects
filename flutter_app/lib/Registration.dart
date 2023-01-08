//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Login.dart';
import 'const.dart';

class Registration extends StatefulWidget {
  static final String ScreenId1 = "Registration";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Registration> {
  String email = "";
  String name = "";
  String password = "";
  // ignore: non_constant_identifier_names
  String PhoneNo = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[400],
      appBar: AppBar(
        title: Text(
          "Admin Pannel Log In",
          style: TextStyle(fontSize: 14, color: Colors.white70),
        ),
        backgroundColor: Colors.indigo[500],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: const Offset(
                  8.0,
                  8.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ],
          ),
          height: 350.0,
          width: 350.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    name = value;
                  },
                  decoration: Deco.copyWith(hintText: "Enter Username"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (value) {
                    PhoneNo = value;
                  },
                  decoration: Deco.copyWith(hintText: 'Enter Phone Number'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                  //obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: Deco.copyWith(hintText: 'Enter new  Password'),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Material(
                    color: Colors.deepPurpleAccent[200],
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () async {
                        setState(() {
                          Navigator.pushNamed(context, Login.ScreenId);
                        });
                        //Implement login functionality.
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Register',
                      ),
                    ),
                  ),
                ),
                //),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
