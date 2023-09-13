import 'package:flutter/material.dart';
import 'package:hackheads/components/data.dart';
import 'package:hackheads/pages/splashscreen.dart';

class Group extends StatelessWidget {
  const Group({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFFD8CABE),
          body: Center(
              child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(children: [
              Text(
                'Which group are you part of?',
                style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 300.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF28F3B)),
                      onPressed: () {
                        questions1 = questions;
                        options1 = ans;
                        answers1 = CorrectAns;
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SplashScreen()),
                        );
                        group = 1;
                      },
                      child: Text('Class 9 to 10'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF28F3B)),
                      onPressed: () {
                        questions1 = questions2;
                        options1 = options2;
                        answers1 = answers2;
                        group = 2;
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SplashScreen()),
                        );
                      },
                      child: Text('Class 11 to 12'),
                    ),
                  ),
                ],
              ),
            ]),
          )),
        ));
  }
}
