import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class LogPage extends StatefulWidget {
  const LogPage({Key? key});

  @override
  State<LogPage> createState() => LogPageState();
}

class LogPageState extends State<LogPage>{
  String log = '';
  @override
  void initState() {
    super.initState();
    readLog();
  }

  Future<String> get documentPath async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    print(appDocPath);
    return appDocPath;
  }

  Future<File> getFile() async{
    final path = await documentPath;
    final File file = File('$path/log.txt');
    return file;
  }

  Future<String> readLog() async {
    try {
      final file = await getFile();
      String contents = await file.readAsString();
      setState(() {
        log = contents;
      });
      return contents;
    } catch (e) {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('출석기록'),
      ),
      body: (
          SingleChildScrollView(
            child: Text(log),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getFile().then((file) {
            file.writeAsString("");
            setState(() {
              log = '';
            });
          });
        },
      )
      ,
    );
  }
}