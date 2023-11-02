import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60, left: 20),
              child: Image.asset(
                'assets/images/logo.png',
                width: 75,
                height: 75,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Image.asset(
                      'assets/icons/discount.png',
                      width: 50,
                      height: 50,
                    ),
                    )
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.only(top: 60, right: 30),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Image.asset(
                      'assets/icons/heart.png',
                      width: 50,
                      height: 50,
                    ),
                    )
                  ),
                ],
              ),
            ),
          ],
          ),
          SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 5),
              width: 350,
              height: 160,
              decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red[600]!, Colors.red[900]!],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Hi, Brilliyand Noval Herdana Putra',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
