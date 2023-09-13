// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackheads/components/widgets.dart';
import '../components/data.dart';
import '../components/contants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoginSphere(
                      img: 'assets/loginsphere.png',
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Personal Details',
                              style: TextStyle(
                                  fontSize: 35.0, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Name:'),
                                  Text('Amartya Kumar')
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Divider(
                              color: Colors
                                  .black, // You can set the color of the line
                              height:
                                  1, // You can adjust the height of the line
                              thickness:
                                  1, // You can adjust the thickness of the line
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text('Age:'), Text('20')],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Divider(
                              color: Colors
                                  .black, // You can set the color of the line
                              height:
                                  1, // You can adjust the height of the line
                              thickness:
                                  1, // You can adjust the thickness of the line
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Email:'),
                                  Text('example@gmail.com')
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Divider(
                              color: Colors
                                  .black, // You can set the color of the line
                              height:
                                  1, // You can adjust the height of the line
                              thickness:
                                  1, // You can adjust the thickness of the line
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text('Phone:'), Text('9112345678')],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Divider(
                              color: Colors
                                  .black, // You can set the color of the line
                              height:
                                  1, // You can adjust the height of the line
                              thickness:
                                  1, // You can adjust the thickness of the line
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: width * 0.1, right: width * 0.1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text('City:'), Text('Patna')],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Divider(
                              color: Colors
                                  .black, // You can set the color of the line
                              height:
                                  1, // You can adjust the height of the line
                              thickness:
                                  1, // You can adjust the thickness of the line
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                  width: double.infinity, child: Image.asset('assets/bg2.png'))
            ],
          ),
        ),
      ),
    );
  }
}
