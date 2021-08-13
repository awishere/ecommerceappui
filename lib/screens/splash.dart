import 'package:ecommerceappui/constants.dart';
import 'package:ecommerceappui/screens/login.dart';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Spacer(),
                        Text(
                          "ASHOPN",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                        Text(
                          "Welcome to Ashopn, Let's shop!",
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Image.asset(
                          "assets/images/splash_1.png",
                          height: 250,
                          width: 250,
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        ButtonTheme(
                          minWidth: 280,
                          height: 50,
                          child: Center(
                            child: RaisedButton(
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Muli-Bold'),
                                ),
                                onPressed: () async {
                                  try {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()),
                                    );
                                  } catch (e) {
                                    print(e);
                                  }
                                },
                                color: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0))),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
