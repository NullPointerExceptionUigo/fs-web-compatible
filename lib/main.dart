// public imports
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:date_format/date_format.dart';

// local imports
import 'package:auto_study_management/single_choice.dart';

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
    return MaterialApp(
        theme: ThemeData(fontFamily: "IBM_Plex_Sans_KR"),
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
                            SingleChoice(studNum: studNum),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("1");
                                      },
                                      child: const Text('1',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("2");
                                      },
                                      child: const Text('2',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("3");
                                      },
                                      child: const Text('3',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("4");
                                      },
                                      child: const Text('4',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("5");
                                      },
                                      child: const Text('5',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("6");
                                      },
                                      child: const Text('6',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("7");
                                      },
                                      child: const Text('7',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("8");
                                      },
                                      child: const Text('8',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("9");
                                      },
                                      child: const Text('9',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          studNum = "";
                                        });
                                      },
                                      child:
                                          const Icon(Icons.close, size: 32))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        appendNum("0");
                                      },
                                      child: const Text('0',
                                          style: TextStyle(fontSize: 32)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        removeNum();
                                      },
                                      child: const Icon(
                                        Icons.arrow_back,
                                        size: 32,
                                      ))),
                            ),
                          ]),
                    ]))));
  }
}


