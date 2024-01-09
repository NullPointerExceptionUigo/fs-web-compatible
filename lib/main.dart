// public imports
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:date_format/date_format.dart';

// local imports
import 'package:auto_study_management/attend_choice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String studNum = "";

  void appendNum(String num) {
    if (studNum.length >= 5) return;

    setState(() {
      studNum += num;
    });
  }

  void removeNum() {
    if (studNum.isEmpty) return;

    setState(() {
      studNum = studNum.substring(0, studNum.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    const double buttonContentSize = 24;

    const double buttonWidth = 80;
    const double buttonHeight = 80;

    return MaterialApp(
        home: Scaffold(
            body: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(50, 20, 0, 50),

                          child: TimerBuilder.periodic(const Duration(seconds: 1),
                          builder: (context) {
                            return Text(
                                formatDate(DateTime.now(), [HH, ':', nn, ':', ss]),
                                style: const TextStyle(fontSize: 48, fontFamily: "IBM_Plex_Sans_KR"),
                                textAlign: TextAlign.left);
                          }))
                      ,

                      SizedBox(
                          width: 300,
                          height: 100,
                          child: Text(studNum,
                              style: const TextStyle(fontSize: 48),
                              textAlign: TextAlign.center)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AttendChoice(studNum: studNum),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: FilledButton(
                                onPressed: () {},
                                child: const Icon(Icons.send, size: 16,),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("1");
                                      },
                                      child: const Text('1',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("2");
                                      },
                                      child: const Text('2',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("3");
                                      },
                                      child: const Text('3',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("4");
                                      },
                                      child: const Text('4',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("5");
                                      },
                                      child: const Text('5',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("6");
                                      },
                                      child: const Text('6',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("7");
                                      },
                                      child: const Text('7',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("8");
                                      },
                                      child: const Text('8',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("9");
                                      },
                                      child: const Text('9',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        setState(() {
                                          studNum = "";
                                        });
                                      },
                                      child:
                                          const Icon(Icons.close, size: buttonContentSize))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        appendNum("0");
                                      },
                                      child: const Text('0',
                                          style: TextStyle(fontSize: buttonContentSize)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        removeNum();
                                      },
                                      child: const Icon(
                                        Icons.arrow_back,
                                        size: buttonContentSize,
                                      ))),
                            ),
                          ]),
                    ]))));
  }
}


