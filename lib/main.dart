import 'package:flutter/material.dart';
import 'package:gpa_planner/screens/courses_screen.dart';

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
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      home: CoursesScreen(),
    );
  }
}
