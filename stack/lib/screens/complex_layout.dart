import 'package:flutter/material.dart';

class ComplexLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complex Layout')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.network(
              'image.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black54,
              width: 300,
              height: 300,
              alignment: Alignment.center,
              child: Text(
                'Beautiful Scenery',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}