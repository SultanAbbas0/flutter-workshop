import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  const CourseTile({
    super.key,
    required this.name,
    required this.hours,
    required this.mark,
  });

  final String name;
  final int hours;
  final int mark;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text('$hours h')),
        title: Text(name),
        subtitle: Text('Expected mark $mark%'),
      ),
    );
  }
}
