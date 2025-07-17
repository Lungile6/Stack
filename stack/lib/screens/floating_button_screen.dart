import 'package:flutter/material.dart';

class FloatingButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Floating Button on Card')),
      body: Stack(
        children: [
          Card(
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Text('Content inside card'),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 30,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
