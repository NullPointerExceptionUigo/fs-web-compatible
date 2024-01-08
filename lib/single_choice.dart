import 'package:flutter/material.dart';

enum AttendedType { attended, leave }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key, required this.studNum});

  final String studNum;

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  AttendedType attendedType = AttendedType.attended;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<AttendedType>(
      segments: const <ButtonSegment<AttendedType>>[
        ButtonSegment<AttendedType>(
            value: AttendedType.attended,
            label: Text('입실', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            icon: Icon(Icons.login, size: 16)),
        ButtonSegment<AttendedType>(
            value: AttendedType.leave,
            label: Text('퇴실', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            icon: Icon(Icons.logout, size: 16)),
      ],
      selected: <AttendedType>{attendedType},
      onSelectionChanged: (Set<AttendedType> newSelection) {
        setState(() {
          attendedType = newSelection.first;
        });
      },
    );
  }
}