import 'package:flutter/material.dart';
import 'package:flutter_app/orders.dart';
import 'package:flutter_app/resturants.dart';
import 'users.dart';
import 'DashBoard.dart';

const Deco = InputDecoration(
  hintText: 'Enter your email',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class Constn extends StatefulWidget {
  @override
  _Const createState() => _Const();
}

class _Const extends State<Constn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Container(
          color: Colors.deepPurpleAccent[200],
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              Container(
                  child: DrawerHeader(
                    child: Container(
                      padding: EdgeInsets.all(0.0),
                      child: UserAccountsDrawerHeader(
                        margin: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        accountName: Text(
                          "Biren Amanta",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        accountEmail: Text(
                          "birenamanta@gmail.com",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        currentAccountPicture: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10.0,
                          child: Text(
                            "B",
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                    //alignment: Alignment.topCenter,
                    //height: 10.0,
                  ),
              ListTile(
                hoverColor: Colors.grey,
                title: Row(
                  children: [
                    Icon(
                      Icons.analytics_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'DashBoard',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, DashBoard.ScreenId);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.people_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Users',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, users.ScreenId);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Orders',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, Orders.ScreenId);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.restaurant_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Restaurant',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, Resturants.ScreenId);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
