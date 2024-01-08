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
            label: Text('입실'),
            icon: Icon(Icons.login, size: 16)),
        ButtonSegment<AttendedType>(
            value: AttendedType.leave,
            label: Text('퇴실'),
            icon: Icon(Icons.logout, size: 16)),
      ],
      selected: <AttendedType>{attendedType},
      onSelectionChanged: (Set<AttendedType> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          attendedType = newSelection.first;
        });
      },
    );
  }
}