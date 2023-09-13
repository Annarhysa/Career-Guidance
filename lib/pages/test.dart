import 'package:flutter/material.dart';
import 'package:hackheads/components/data.dart';
import 'package:hackheads/components/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:hackheads/pages/homepage.dart';
import 'result.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String selectedOption = '';
  int i = 0, q = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE8D7C8),
        body: SingleChildScrollView(
          child: Column(
            children: [
              LoginSphere(img: 'assets/questionshead.png'),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    Text(
                      'Questions',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Text(
                          '$q.',
                          style: TextStyle(
                              fontSize: 36.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Flexible(
                          child: Text(
                            softWrap: true,
                            questions1[i],
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    for (int j = 0; j < 4; j++)
                      RadioListTile(
                        activeColor: Color(0xFFF28F3B),
                        title: Text(options1[i][j]),
                        value: options1[i][j],
                        groupValue: Selected[i],
                        onChanged: (value) {
                          setState(() {
                            Selected[i] = value!;
                          });
                        },
                      ),

                    // RadioListTile(
                    //   activeColor: Color(0xFFF28F3B),
                    //   title: Text('61% - 80%'),
                    //   value: '61% - 80%',
                    //   groupValue: selectedOption,
                    //   onChanged: (value) {
                    //     setState(() {
                    //       selectedOption = value!;
                    //     });
                    //   },
                    // ),
                    // RadioListTile(
                    //   activeColor: Color(0xFFF28F3B),
                    //   title: Text('40% - 60%'),
                    //   value: '40% - 60%',
                    //   groupValue: selectedOption,
                    //   onChanged: (value) {
                    //     setState(() {
                    //       selectedOption = value!;
                    //     });
                    //   },
                    // ),
                    // RadioListTile(
                    //   activeColor: Color(0xFFF28F3B),
                    //   title: Text('Below 40%'),
                    //   value: 'Below 40%',
                    //   groupValue: selectedOption,
                    //   onChanged: (value) {
                    //     setState(() {
                    //       selectedOption = value!;
                    //     });
                    //   },
                    // ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF28F3B)),
                      onPressed: () {
                        if (i != 0) {
                          setState(() {
                            i--;
                            q--;
                          });
                        }
                      },
                      child: Text('< Prev')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF28F3B)),
                      onPressed: () {
                        print(Selected[i]);
                        setState(() {
                          if (Selected[i] == answers1[i]) {
                            marks[i] = 1;
                          } else {
                            marks[i] = 0;
                          }
                          if (i != questions1.length - 1) {
                            i++;
                            q++;
                          } else {
                            int count =
                                marks.where((element) => element == 1).length;
                            print(count);
                            print('-----------------');
                            total = (count / 40) * 100;
                            print(marks);
                            for (int i = 0; i < questions1.length; i++) {
                              marks[i] = -1;
                              Selected[i] = "";
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Result()),
                              );
                            }
                          }
                        });
                      },
                      child: Text('NEXT >')),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
