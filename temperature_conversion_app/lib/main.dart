import 'package:flutter/material.dart';
import 'converter.dart'; // 👈 This is the new file you created

void main() {
  runApp(TemperatureConverterApp());
}

class TemperatureConverterApp extends StatelessWidget {
  const TemperatureConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature Converter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TemperatureConverterScreen(),
    );
  }
}

class TemperatureConverterScreen extends StatefulWidget {
  const TemperatureConverterScreen({super.key});

  @override
  _TemperatureConverterScreenState createState() =>
      _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState extends State<TemperatureConverterScreen> {
  final TextEditingController _controller = TextEditingController();
  String _selectedConversion = 'F to C';
  String _result = '';
  final List<String> _history = [];

  // ✅ Here's the function you're asking about
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
      appBar: AppBar(
        title: Text('Temperature Conversion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Temperature input
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter temperature',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Radio buttons
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text('F to C'),
                    leading: Radio(
                      value: 'F to C',
                      groupValue: _selectedConversion,
                      onChanged: (value) {
                        setState(() {
                          _selectedConversion = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('C to F'),
                    leading: Radio(
                      value: 'C to F',
                      groupValue: _selectedConversion,
                      onChanged: (value) {
                        setState(() {
                          _selectedConversion = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),

            // Convert button
            ElevatedButton(
              onPressed: _convertTemperature,
              child: Text('Convert'),
            ),

            SizedBox(height: 16),

            // Display result
            Text(
              'Result: $_result',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),

            // Display history
            Expanded(
              child: ListView.builder(
                itemCount: _history.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_history[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
