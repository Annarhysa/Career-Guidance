import 'package:flutter/material.dart';
import '../components/data.dart';
import 'homepage.dart';

class Result extends StatelessWidget {
  const Result({super.key});
  final int percentage = 100;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEF8D3A),
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
              child: Text(
                'Results',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Center(
              child: Text(
                'Your Most Preferred Career Option is:',
                style: TextStyle(fontSize: 36.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 252, 189, 138)),
              child: Text(
                'Data Science',
                style: TextStyle(
                    fontSize: 38.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              '$total%',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 90.0),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Text(
                    'Return Home',
                    style: TextStyle(color: Color(0xFFEF8D3A), fontSize: 30.0),
                  ),
                )),
            SizedBox(height: height * 0.02),
          ]),
          padding: EdgeInsets.all(30.0),
        ),
      ),
    );
  }
}
