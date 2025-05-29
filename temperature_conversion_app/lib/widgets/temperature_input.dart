// lib/widgets/temperature_input.dart

import 'package:flutter/material.dart';

class TemperatureInput extends StatelessWidget {
  final TextEditingController controller;

  const TemperatureInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Enter temperature',
        prefixIcon: Icon(Icons.thermostat),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
