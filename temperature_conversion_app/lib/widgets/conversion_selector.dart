// lib/widgets/conversion_selector.dart

import 'package:flutter/material.dart';

class ConversionSelector extends StatelessWidget {
  final String selectedConversion;
  final Function(String?) onChanged;

  const ConversionSelector({
    required this.selectedConversion,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          RadioListTile(
            title: Text('Fahrenheit to Celsius'),
            value: 'F to C',
            groupValue: selectedConversion,
            onChanged: onChanged,
          ),
          RadioListTile(
            title: Text('Celsius to Fahrenheit'),
            value: 'C to F',
            groupValue: selectedConversion,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
