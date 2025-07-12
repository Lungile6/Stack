import 'package:flutter/material.dart';

class PositionedWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Positioned Widgets')),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                'Hello!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}