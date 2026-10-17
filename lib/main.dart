import 'package:flutter/material.dart';

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
              Card(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text('Projected GPA'),
                      Text(
                        '82.47%',
                        style: TextStyle(
                          fontSize: 36,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text('Semester average 84.25% · 12 included hours'),
                    ],
                  ),
                ),
              ),
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
