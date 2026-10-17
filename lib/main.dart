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
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('3 h')),
                  title: Text('Data Structures'),
                  subtitle: Text('Expected mark 88%'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('4 h')),
                  title: Text('Calculus II'),
                  subtitle: Text('Expected mark 76%'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('3 h')),
                  title: Text('Database Systems'),
                  subtitle: Text('Expected mark 91%'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('2 h')),
                  title: Text('Technical Writing'),
                  subtitle: Text('Expected mark 85%'),
                ),
              ),
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
