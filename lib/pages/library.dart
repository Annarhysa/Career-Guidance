import 'package:flutter/material.dart';
import '../components/widgets.dart';
import '../components/data.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE8E8E8),
        body: SingleChildScrollView(
          child: Column(
            children: [
              LoginSphere(img: 'assets/Group45.png'),
              Books(
                  num: 1,
                  img: 'assets/mechanic.png',
                  title: 'Mechanical Engineering',
                  decs:
                      'Lörem ipsum pode bens samt biodorir kippavandring guskap alyse kåss. Lor rallylydnad, osade och detåsk: inrymning örar. '),
              SizedBox(
                height: height * 0.03,
              ),
              Books(
                  num: 2,
                  img: 'assets/datasc.png',
                  title: 'Data Scientist',
                  decs:
                      'Lörem ipsum pode bens samt biodorir kippavandring guskap alyse kåss. Lor rallylydnad, osade och detåsk: inrymning örar. '),
              SizedBox(
                height: height * 0.03,
              ),
              Books(
                  num: 3,
                  img: 'assets/software.png',
                  title: 'Software Engineer',
                  decs:
                      'Lörem ipsum pode bens samt biodorir kippavandring guskap alyse kåss. Lor rallylydnad, osade och detåsk: inrymning örar. '),
              SizedBox(
                height: height * 0.03,
              ),
              Books(
                  num: 2,
                  img: 'assets/ai.png',
                  title: 'Artificial Intelligence',
                  decs:
                      'Lörem ipsum pode bens samt biodorir kippavandring guskap alyse kåss. Lor rallylydnad, osade och detåsk: inrymning örar. '),
              SizedBox(
                height: height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Books extends StatelessWidget {
  Books(
      {super.key,
      required this.img,
      required this.title,
      required this.decs,
      required this.num});
  String img, title, decs;
  int num;

  @override
  Widget build(BuildContext context) {
    if (num % 2 == 1)
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: height * 0.2,
              height: height * 0.2,
              child: Image.asset(img)),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(color: Color(0xFFCACACA)),
            height: height * 0.2,
            width: height * 0.2,
            child: Column(
              children: [
                Center(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Text(
                    decs,
                    style: TextStyle(fontSize: 9),
                  ),
                )
              ],
            ),
          )
        ],
      );
    else
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(color: Color(0xFFCACACA)),
            height: height * 0.2,
            width: height * 0.2,
            child: Column(
              children: [
                Center(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Text(
                    decs,
                    style: TextStyle(fontSize: 9),
                  ),
                )
              ],
            ),
          ),
          Container(
              width: height * 0.2,
              height: height * 0.2,
              child: Image.asset(img)),
        ],
      );
  }
}
