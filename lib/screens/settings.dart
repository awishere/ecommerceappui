import 'package:ecommerceappui/screens/bottombar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

import '../smart_textfield.dart';
import 'bottombar.dart';

class Settings extends StatefulWidget {
  String name;
  String id;
  String password;
  Settings({this.name, this.id, this.password});
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController fName = TextEditingController();

  TextEditingController password = TextEditingController();
  String role = "user";
  bool val = false;
  onSwitchValueChanged(bool newVal) {
    setState(() {
      val = newVal;
    });
  }

  @override

  // Future<void> _update() async {
  //   final msg = jsonEncode({
  //     "fullName": "${fName.text}",
  //     "password": "${password.text}",
  //     "role": "user"
  //   });
  //   final response =
  //       await http.patch(Uri.parse('https://localhost:5001/api/users'),
  //           headers: <String, String>{
  //             'Content-Type': 'application/json; charset=UTF-8',
  //           },
  //           body: msg);
  //   if (response.statusCode == 201) {

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    fName.text = widget.name;
    password.text = widget.password;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final double circleRadius = 120.0;
    return Scaffold(
      // backgroundColor: scaffoldColor,
      //   appBar: appBar(height: height, width: width, context: context),
      //  bottomNavigationBar: Bottomb(),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: <Widget>[
          Positioned(
            top: height * 0.67,
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 18.0, left: 18.0, bottom: 38),
              child: Container(
                height: height / 13,
                width: width / 1.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.teal),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Notification',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Muli-Bold'),
                      ),
                    ),
                    Switch(
                      value: val,
                      onChanged: (newVal) {
                        onSwitchValueChanged(newVal);
                      },
                      activeColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Stack(
          //   children: [

          // ],
          //),
          Positioned(
              top: height / 12,
              left: width * 0.07,
              child: Text(
                'Settings',
                style: TextStyle(
                    color: Colors.grey, fontSize: 28, fontFamily: 'Muli'),
              )),
          Stack(
            children: [
              Positioned(
                top: height * 0.16,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: circleRadius / 1.8, left: 20, right: 20),

                  ///here we create space for the circle avatar to get ut of the box
                  child: Container(
                    //height: height/2.1,
                    width: width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.teal,
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black26,
                      //     blurRadius: 8.0,
                      //     offset: Offset(0.0, 5.0),
                      //   ),
                      // ],
                    ),
                    //width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          SizedBox(
                            height: circleRadius / 4,
                          ),
                          smartTextField(
                              title: 'Full Name',
                              controller: fName,
                              hintText: 'Enter your full name..',
                              img: Image.asset('assets/images/edit.png')),

                          smartTextField(
                              title: 'Password',
                              controller: password,
                              hintText: 'Enter your password..',
                              img: Image.asset('assets/images/edit.png')),
                          // SizedBox(
                          //   height: 14.0,
                          // ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32.0, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ButtonTheme(
                                  minWidth: 280,
                                  height: 50,
                                  child: Center(
                                    // padding: const EdgeInsets.only(top:2.0),
                                    child: RaisedButton(
                                        child: Text(
                                          'Update',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                              fontFamily: 'Muli-Bold'),
                                        ),
                                        onPressed: () {},
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: height / 6,
            left: width / 2.9,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 3.5,
                height: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle,
                  // color: Colors.amber,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Profile Image.png')),

                  /// replace your image with the Icon
                ),
              ),
            ),
          ),

          Positioned(
            top: height / 4,
            left: width * 0.58,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {},
                    color: Colors.black,
                    iconSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
