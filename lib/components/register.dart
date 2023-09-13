import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackheads/pages/homepage.dart';
import 'data.dart';
import 'widgets.dart';
import 'dart:ui';
import 'package:firebase_database/firebase_database.dart';

class Register extends StatelessWidget {
  Register({super.key});
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  TextEditingController t5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void Reg(String email, String password, String age, String phone,
        String city, String name) async {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        if (userCredential.user != null) {
          var uid = FirebaseAuth.instance.currentUser?.uid;
          FirebaseDatabase database = FirebaseDatabase.instance;

          DatabaseReference ref = FirebaseDatabase.instance.ref("users/$uid");

          await ref.set({
            "name": name,
            "age": age,
            "city": city,
            "phone": phone,
            "email": email
          });
          // DatabaseReference ref = FirebaseDatabase.instance.ref("users/$uid");
          // print('1111');
          // // await ref.set({
          // //   "name": name,
          // //   "email": email,
          // //   "age": age,
          // //   "phone": phone,
          // //   "city": city
          // // });
          // print('22222222222');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
          print("yes");
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
        } else if (e.code == 'email-already-in-use') {}
      } catch (e) {
        print(e);
      }
    }

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
                        controller: t1,
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
                        controller: t2,
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
                        controller: t3,
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
                        controller: t4,
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
                          Reg(email.text, pass.text, t2.text, t3.text, t4.text,
                              t1.text);
//                           try {
//                             UserCredential userCredential = await FirebaseAuth
//                                 .instance
//                                 .createUserWithEmailAndPassword(
//                                     email: email.text.trim(),
//                                     password: pass.text.trim());

//                                     DatabaseReference userRef = FirebaseDatabase.instance.reference().child('users');
//                 await userRef.child(userCredential.user.uid).set({
//   'name': user.name,
//   'email': user.email,
//   'age': user.age,
//   'phone': user.phone,
//   'city': user.city,
// });
//                           } on FirebaseAuthException catch (e) {
//                             if (e.code == 'weak-password') {
//                             } else if (e.code == 'email-already-in-use') {}
//                           } catch (e) {}

//                           //here

//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(builder: (context) => HomePage()),
//                           );
//                           print("yes");
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
