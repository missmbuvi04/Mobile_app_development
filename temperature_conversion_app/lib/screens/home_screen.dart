// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../converter.dart';
import '../widgets/conversion_selector.dart';
import '../widgets/temperature_input.dart';
import '../widgets/result_display.dart';
import '../widgets/history_list.dart';

class TemperatureConverterScreen extends StatefulWidget {
  @override
  _TemperatureConverterScreenState createState() =>
      _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState extends State<TemperatureConverterScreen> {
  final TextEditingController _controller = TextEditingController();
  String _selectedConversion = 'F to C';
  String _result = '';
  List<String> _history = [];

  void _convertTemperature() {
    double input = double.tryParse(_controller.text) ?? 0;

    setState(() {
      _result = convertTemperature(input, _selectedConversion);
      _history.add('$_selectedConversion: $input => $_result');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Temperature Converter')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TemperatureInput(controller: _controller),
                  SizedBox(height: 16),
                  ConversionSelector(
                    selectedConversion: _selectedConversion,
                    onChanged: (value) {
                      setState(() {
                        _selectedConversion = value!;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    icon: Icon(Icons.thermostat),
                    label: Text('Convert'),
                    onPressed: _convertTemperature,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(height: 24),
                  ResultDisplay(result: _result),
                  SizedBox(height: 24),
                  Divider(),
                  Text('History', style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 8),
                  HistoryList(history: _history),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
