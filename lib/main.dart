// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackheads/components/data.dart';
import 'package:hackheads/firebase_options.dart';
import 'pages/login.dart';
import 'package:hackheads/components/data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);

  for (int i = 0; i < questions.length; i++) {
    marks.add(-1);
    Selected.add("");
  }
  // CheckData();
  // print('---------------------------------');
  // List<List<String>> valuesList = options.values.toList();
  // print(valuesList[1]);
  runApp(MaterialApp(
    // theme: ThemeData(
    //   scaffoldBackgroundColor: Color(0xFFE8E8E8),
    // ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print('height: ');
    print(height);
    print('w');
    print(width);
    return Login();
    // return MaterialApp(
    //   theme: ThemeData.dark().copyWith(
    //     primaryColor: const Color(0xFF0A0E21),
    //     scaffoldBackgroundColor: const Color(0xFF0A0E21),
    //   ),
    //   home: Login(),
    // );
  }
}
