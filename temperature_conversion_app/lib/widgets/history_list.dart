// lib/widgets/history_list.dart

import 'package:flutter/material.dart';

class HistoryList extends StatelessWidget {
  final List<String> history;

  const HistoryList({required this.history});

  @override
  Widget build(BuildContext context) {
    if (history.isEmpty) return Text('No conversions yet.');

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: history.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.history),
          title: Text(history[index]),
        );
      },
    );
  }
}
