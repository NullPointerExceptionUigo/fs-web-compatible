import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:date_format/date_format.dart';

class Clock extends StatelessWidget implements PreferredSizeWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(const Duration(seconds: 1), builder: (context) {
      return AppBar(
        title: Text(formatDate(DateTime.now(), [hh, ':', nn, ':', ss]),style: const TextStyle(fontSize:28 , fontFamily: 'IBMPlexSansKR', fontWeight: FontWeight.bold)),
        centerTitle: true
      );
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
