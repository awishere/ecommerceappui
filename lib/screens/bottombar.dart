import 'package:ecommerceappui/screens/cart.dart';
import 'package:ecommerceappui/screens/homeW.dart';
import 'package:ecommerceappui/screens/homepage.dart';
import 'package:ecommerceappui/screens/login.dart';
import 'package:ecommerceappui/screens/settings.dart';
import 'package:ecommerceappui/screens/splash.dart';
import 'package:flutter/material.dart';

class Bottomb extends StatefulWidget {
  @override
  _BottombState createState() => _BottombState();
}

class _BottombState extends State<Bottomb> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _options = <Widget>[
    HomeC(),
    CartPage(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTap,
        currentIndex:
            _selectedIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Cart"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Settings",
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Center(
          child: _options.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
