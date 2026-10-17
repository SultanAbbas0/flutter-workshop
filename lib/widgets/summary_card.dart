import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
