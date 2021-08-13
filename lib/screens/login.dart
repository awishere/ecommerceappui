import 'dart:convert';
import 'dart:ui';
import 'package:ecommerceappui/constants.dart';
import 'package:ecommerceappui/screens/homepage.dart';
import 'package:flutter/material.dart';

import '../smart_textfield.dart';

bool isButtonPressed = false;
bool isaButtonPressed = false;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // }
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fname = TextEditingController();
  String name;
  String id;
  bool isTrue = false;
  bool isSignup = false;
  dynamic responseData;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;

  bool loginIs = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // onWillPop: _onBackPressed,

      key: _scaffoldKey,
      // resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        height: height / 1.1,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.purple,
              blurRadius: 5,
              offset: Offset(4, 8), // Shadow position
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: height / 8,
              left: width * 0.13,
              child: Container(
                width: width / 1.4,
                //height: height,
                // color: Colors.red,
                //color: scaffoldColor.withOpacity(0),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      height: height / 14,
                                      // width: width / 5,
                                      child: Text('ASHOPN',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: kPrimaryColor,
                                              fontSize: 30,
                                              fontFamily: 'Muli-Bold')),
                                      //  color: Colors.pink,
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      //  height: height / 14,
                                      //  width: width / 2,
                                      child: Text('E-Shop App',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Muli')),
                                      // color: Colors.pink,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height / 3,
              left: width * 0.13,
              child: Container(
                // color: Colors.amberAccent,
                width: width / 1.4,
                child: Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                isButtonPressed = !isButtonPressed;
                                isSignup = false;
                                isLogin = true;
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => Login()),
                                // );
                              });
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Muli-Bold',
                                  color:
                                      isLogin ? kPrimaryColor : Colors.white),
                            ),
                            //shape: UnderlineInputBorder(),
                            //splashColor: Colors.orange,
                            // color: scaffoldColor,
                            // textColor: isLogin
                            //     ? Colors.orange
                            //     : Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                isaButtonPressed = !isaButtonPressed;
                                isLogin = false;
                                isSignup = true;
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => Signup()),
                                // );
                              });
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Muli-Bold',
                                  color:
                                      isSignup ? kPrimaryColor : Colors.white),
                            ),
                            // textColor: isSignup
                            //     ? Colors.orange
                            //     : Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: <
                      Widget>[
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(left: 5.0, right: 0.0),
                          child: Divider(
                            color: isLogin ? kPrimaryColor : Colors.white,
                            thickness: 2,
                            height: 0,
                            indent: 5,
                          )),
                    ),
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(left: 0, right: 0.0),
                          child: Divider(
                            color: isSignup ? kPrimaryColor : Colors.white,
                            // color: Colors.white,
                            thickness: 2,
                            height: 0,
                            endIndent: 8,
                          )),
                    ),
                  ]),
                  //
                  isLogin
                      ? Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                smartTextField(
                                    title: 'E-mail',
                                    controller: email,
                                    hintText: 'anaswaheed@hotmail.com'),
                                smartTextField(
                                    title: 'Password',
                                    controller: password,
                                    hintText: '*******',
                                    obscureText: true,
                                    isPassword: true,
                                    img: Image.asset(
                                        'assets/images/password.png'))
                                //SizedBox(height: 3),
                              ],
                            ),
                          ),
                        )
                      : Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                smartTextField(
                                  title: 'Full Name',
                                  controller: fname,
                                  hintText: 'anaswaheed@hotmail.com',
                                ),
                                smartTextField(
                                  title: 'E-mail',
                                  controller: email,
                                  hintText: 'Enter Email',
                                ),
                                smartTextField(
                                    title: 'Password',
                                    controller: password,
                                    hintText: '*******',
                                    isPassword: true,
                                    obscureText: true,
                                    img: Image.asset(
                                        'assets/images/password.png')),
                                //   SizedBox(height: 3),
                              ],
                            ),
                          ),
                        ),
                  isLogin
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isButtonPressed = !isButtonPressed;
                                    isSignup = false;
                                    isLogin = true;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => Login()),
                                    // );
                                  });
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Muli-SemiBold',
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container(),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(40),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_right_alt,
                              size: 35,
                            ),
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homepage()),
                                );
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
