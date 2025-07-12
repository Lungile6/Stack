import 'package:flutter/material.dart';

class ClippingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clipping Example')),
      body: Center(
        child: ClipOval(
          child: Stack(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}