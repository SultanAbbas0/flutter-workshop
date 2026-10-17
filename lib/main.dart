import 'package:flutter/material.dart';
import 'package:gpa_planner/widgets/course_tile.dart';
import 'package:gpa_planner/widgets/summary_card.dart';

void main() {
  runApp(GpaPlannerApp());
}

class GpaPlannerApp extends StatelessWidget {
  const GpaPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('My Courses')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SummaryCard(),
              CourseTile(name: 'Data Structures', hours: 3, mark: 88),
              CourseTile(name: 'Calculus II', hours: 4, mark: 76),
              CourseTile(name: 'Database Systems', hours: 3, mark: 91),
              CourseTile(name: 'Technical Writing', hours: 2, mark: 85),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Add course');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
