import 'package:flutter/material.dart';
import '../components/data.dart';
import '../pages/homepage.dart';

class LineOrLine extends StatelessWidget {
  const LineOrLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width * 0.2546,
            height: height * 0.00123,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'OR',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: width * 0.2546,
            height: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class LoginPlate2 extends StatelessWidget {
  const LoginPlate2({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.061,
      margin: EdgeInsets.only(right: width * 0.043),
      decoration: const BoxDecoration(color: Color(0xFFa5a7a6)),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: width * 0.050,
            ),
            Icon(
              icon,
              size: height * 0.036,
            ),
            SizedBox(
              width: width * 0.050,
            ),
            Text(
              text,
              style: TextStyle(fontSize: height * 0.027),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginSphere extends StatelessWidget {
  LoginSphere({super.key, required this.img});
  String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        img,
        width: double.infinity,
        fit: BoxFit.cover,
        height: height * 0.4,
      ),
    );
  }
}

class BGDesign extends StatelessWidget {
  const BGDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/bg2.png',
        width: double.infinity,
        fit: BoxFit.cover,
        height: height * 0.4,
      ),
    );
  }
}

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.061,
      padding: EdgeInsets.only(left: width * 0.147, right: width * 0.147),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement<void, void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => HomePage(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF4E2BF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'assets/google.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: width * 0.076,
            ),
            const Text(
              'Sign-in with Google',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
