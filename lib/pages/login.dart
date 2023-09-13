// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackheads/pages/homepage.dart';
import 'package:hackheads/components/register.dart';
import '../components/widgets.dart';
import 'package:hackheads/components/data.dart';
import '../components/textbox.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LoginSphere(
                  img: 'assets/loginsphere.png',
                ),
                SizedBox(
                  height: height * 0.0264,
                ),
                Center(
                  child: Text(
                    'Welcome Back!!',
                    style: TextStyle(
                        fontSize: height * 0.039, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width * 0.41,
                        height: height * 0.00123,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.049 * height,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.1),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0), // Add horizontal padding.
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius for rounded corners.
                      color: Color(
                          0xFFF4E2BF), // Set the background color of the container.
                    ),
                    child: TextBox(
                      hinttext: 'U S E R N A M E',
                      icon: Icon(
                        Icons.person,
                        size: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.1),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0), // Add horizontal padding.
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius for rounded corners.
                      color: Color(
                          0xFFF4E2BF), // Set the background color of the container.
                    ),
                    child: TextBox(
                      hinttext: 'P A S S W O R D',
                      icon: Icon(
                        Icons.key,
                        size: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: height * 0.0246,
                ),
                // const LoginPlate(icon: Icons.key, text: 'P A S S W O R D'),
                // SizedBox(
                //   height: height * 0.0246,
                // ),
                Container(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.1),
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
                        backgroundColor: const Color(0xFFF28F3B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('L O G I N')),
                ),
                SizedBox(
                  height: height * 0.036,
                ),
                const LineOrLine(),
                SizedBox(
                  height: height * 0.036,
                ),

                const SignInWithGoogle(),
                SizedBox(
                  height: height * 0.012,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('New User?'),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: const Text(
                        'REGISTER',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
