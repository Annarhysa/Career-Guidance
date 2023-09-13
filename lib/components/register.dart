import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'widgets.dart';
import 'dart:ui';

class Register extends StatelessWidget {
  Register({super.key});
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
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
                Container(
                  padding:
                      EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        style: const TextStyle(
                            fontSize: 16), // Adjust the font size if needed
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16), // Adjust padding
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                            borderSide:
                                BorderSide.none, // Remove the border lines
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors
                                  .grey[400]), // Change the hint text color
                          hintText: "Enter Full Name",
                          fillColor: const Color(
                              0xFFF4E2BF), // Set the background color
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        'E-mail',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        controller: email,
                        style: const TextStyle(
                            fontSize: 16), // Adjust the font size if needed
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16), // Adjust padding
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                            borderSide:
                                BorderSide.none, // Remove the border lines
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors
                                  .grey[400]), // Change the hint text color
                          hintText: "Enter E-mail ID",
                          fillColor: const Color(
                              0xFFF4E2BF), // Set the background color
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        'Age',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        style: const TextStyle(
                            fontSize: 16), // Adjust the font size if needed
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16), // Adjust padding
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                            borderSide:
                                BorderSide.none, // Remove the border lines
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors
                                  .grey[400]), // Change the hint text color
                          hintText: "Enter Age",
                          fillColor: const Color(
                              0xFFF4E2BF), // Set the background color
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        'Phone-Number',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        style: const TextStyle(
                            fontSize: 16), // Adjust the font size if needed
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16), // Adjust padding
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                            borderSide:
                                BorderSide.none, // Remove the border lines
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors
                                  .grey[400]), // Change the hint text color
                          hintText: "Enter Number",
                          fillColor: const Color(
                              0xFFF4E2BF), // Set the background color
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        'City',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        style: const TextStyle(
                            fontSize: 16), // Adjust the font size if needed
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16), // Adjust padding
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                            borderSide:
                                BorderSide.none, // Remove the border lines
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors
                                  .grey[400]), // Change the hint text color
                          hintText: "Enter City",
                          fillColor: const Color(
                              0xFFF4E2BF), // Set the background color
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        obscureText: true,
                        controller: pass,
                        style: const TextStyle(
                            fontSize: 16), // Adjust the font size if needed
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16), // Adjust padding
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                            borderSide:
                                BorderSide.none, // Remove the border lines
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors
                                  .grey[400]), // Change the hint text color
                          hintText: "Enter Password",
                          fillColor: const Color(
                              0xFFF4E2BF), // Set the background color
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          // if (_formKey.currentState!.validate()) {
                          //   try {
                          //     final UserCredential userCredential =
                          //         await _auth.createUserWithEmailAndPassword(
                          //       email: email.text,
                          //       password: pass.text,
                          //     );

                          //     if (userCredential.user != null) {
                          //       // User has been successfully created.
                          //       // You can navigate to the next screen or perform other actions here.
                          //       print('User registration successful.');
                          //     }
                          //   } catch (e) {
                          //     // Handle errors such as invalid email, weak password, etc.
                          //     print('Error during registration: $e');
                          //   }
                          // }
                        },
                        child: Text(
                          'S u b m i t',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF28F3B)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
