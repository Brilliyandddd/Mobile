import 'package:flutter/material.dart';


class input extends StatelessWidget {
  const input({
    super.key,
    required TextEditingController celsiusController,
  }) : _celsiusController = celsiusController;

  final TextEditingController _celsiusController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _celsiusController,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Masukkan Suhu (Celsius)',
      ),
    );
  }
}