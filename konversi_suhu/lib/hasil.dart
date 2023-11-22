import 'package:flutter/material.dart';

class hasil extends StatelessWidget {
  const hasil({
    super.key,
    required double kelvinResult,
    required double reamurResult,
  }) : _kelvinResult = kelvinResult, _reamurResult = reamurResult;

  final double _kelvinResult;
  final double _reamurResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Suhu dalam Kelvin:', style: TextStyle(fontSize: 18)),
              Text('Suhu dalam Reamur:', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('$_kelvinResult', style: TextStyle(fontSize: 40)),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text('$_reamurResult', style: TextStyle(fontSize: 40)),
            ),
          ],
        ),
      ],
    );
  }
}