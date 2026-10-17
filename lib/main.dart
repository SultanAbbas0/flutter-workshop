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
