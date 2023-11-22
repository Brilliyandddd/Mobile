import 'package:flutter/material.dart';
import 'input.dart';
import 'hasil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suhu Converter',
      home: TemperatureConverter(),
    );
  }
}

class TemperatureConverter extends StatefulWidget {
  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  TextEditingController _celsiusController = TextEditingController();
  double _kelvinResult = 0.0;
  double _reamurResult = 0.0;

  void _convertTemperature() {
    if (_celsiusController.text.isNotEmpty) {
      double celsius = double.parse(_celsiusController.text);
      setState(() {
        _kelvinResult = celsius + 273.15;
        _reamurResult = celsius * 4 / 5;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konverter Suhu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              input(celsiusController: _celsiusController),
              SizedBox(height: 20),
              hasil(kelvinResult: _kelvinResult, reamurResult: _reamurResult),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 250),
                child: ElevatedButton(
                  onPressed: () {
                    _convertTemperature();
                  },
                  child: Text('Konversi Suhu'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}