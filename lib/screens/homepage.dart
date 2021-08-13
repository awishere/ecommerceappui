import 'dart:ui';

import 'package:ecommerceappui/constants.dart';
import 'package:ecommerceappui/screens/bottombar.dart';
import 'package:ecommerceappui/screens/homeW.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'getproducts.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeC()),
      bottomNavigationBar: Bottomb(),
    );
  }
}
