import 'dart:io';
import 'package:path_provider/path_provider.dart';

class WriteLog{

  late File file;
  void writeLog(String info)
  {
    final now = DateTime.now();
    final log = '${now.month}월${now.day}일 ${now.hour}:${now.minute}:${now.second} -- $info';
    write(log);
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

  Future<File> write(String log) async {
    final file = await getFile();
    return file.writeAsString('$log\n', mode: FileMode.append);
  }
}