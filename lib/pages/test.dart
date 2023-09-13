import 'package:flutter/material.dart';
import 'package:hackheads/components/data.dart';
import 'package:hackheads/components/widgets.dart';
import 'package:flutter/widgets.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
              // children: [Image.asset('assets/questionshead.png')],
              )),
    );
  }
}
