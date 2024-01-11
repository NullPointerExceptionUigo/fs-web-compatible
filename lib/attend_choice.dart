import 'package:flutter/material.dart';

enum AttendType { enter, leave }

AttendType attendedType = AttendType.enter;

class AttendChoice extends StatefulWidget {
  const AttendChoice({super.key, required this.studNum});

  final String studNum;

  @override
  State<AttendChoice> createState() => AttendChoiceState();
}

class AttendChoiceState extends State<AttendChoice> {
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<AttendType>(
      segments: const <ButtonSegment<AttendType>>[
        ButtonSegment<AttendType>(
            value: AttendType.enter,
            label: Text('입실',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            icon: Icon(Icons.login, size: 16)),
        ButtonSegment<AttendType>(
            value: AttendType.leave,
            label: Text('퇴실',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            icon: Icon(Icons.logout, size: 16)),
      ],
      selected: <AttendType>{attendedType},
      onSelectionChanged: (Set<AttendType> newSelection) {
        setState(() {
          attendedType = newSelection.first;
        });
      },
    );
  }
}
