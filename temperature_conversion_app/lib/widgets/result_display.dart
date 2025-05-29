// lib/widgets/result_display.dart

import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final String result;

  const ResultDisplay({required this.result});

  @override
  Widget build(BuildContext context) {
    return result.isEmpty
        ? Container()
        : Card(
      color: Colors.green[50],
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Result: $result',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
