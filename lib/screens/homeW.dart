import 'dart:ui';

import 'package:ecommerceappui/constants.dart';
import 'package:ecommerceappui/screens/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'getproducts.dart';

class HomeC extends StatefulWidget {
  @override
  _HomeCState createState() => _HomeCState();
}

class _HomeCState extends State<HomeC> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    width: width * 0.6,
                    height: height / 17,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                        decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search Product",
                      prefixIcon: Icon(Icons.search),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(width / 32),
                    width: width / 6,
                    height: height / 17,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        shape: BoxShape.circle),
                    child: Container(
                        child: SvgPicture.asset("assets/icons/Cart Icon.svg")),
                  ),
                  Container(
                    padding: EdgeInsets.all(width / 32),
                    width: width / 6,
                    height: height / 17,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset("assets/icons/Bell.svg"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height / 22,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: height / 8,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text.rich(TextSpan(
                      text: "A summer Sale\n",
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "Cashback 40%",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))
                      ])),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: SizedBox(
                      width: width / 6,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9),
                            height: height / 12,
                            width: width / 4,
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(categories[0]["icon"]),
                          ),
                          SizedBox(height: 5),
                          Text(categories[0]["text"],
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: width / 6,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9),
                            height: height / 12,
                            width: width / 4,
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(categories[1]["icon"]),
                          ),
                          SizedBox(height: 5),
                          Text(categories[1]["text"],
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SizedBox(
                      width: width / 6,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9),
                            height: height / 12,
                            width: width / 4,
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(categories[2]["icon"]),
                          ),
                          SizedBox(height: 5),
                          Text(categories[2]["text"],
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SizedBox(
                      width: width / 6,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9),
                            height: height / 12,
                            width: width / 4,
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(categories[3]["icon"]),
                          ),
                          SizedBox(height: 5),
                          Text(categories[3]["text"],
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For you",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text("See More")
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            // color: Colors.red,
                            width: width / 1.4,
                            height: height / 6,
                            decoration: BoxDecoration(
                              //  color: Colors.teal.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/Image Banner 2.png",
                                height: 250,
                                color: Color.fromRGBO(255, 255, 255, 0.5),
                                colorBlendMode: BlendMode.modulate,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Text.rich(TextSpan(
                                    text: "SmartPhones\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                          text: "20 Brands",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal))
                                    ])),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            // color: Colors.red,
                            width: width / 1.4,
                            height: height / 6,
                            decoration: BoxDecoration(
                              //  color: Colors.teal.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/Image Banner 3.png",
                                height: 250,
                                color: Color.fromRGBO(255, 255, 255, 0.5),
                                colorBlendMode: BlendMode.modulate,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Text.rich(TextSpan(
                                    text: "Men Wear\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                          text: "24 Brands",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal))
                                    ])),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopularProducts(),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
