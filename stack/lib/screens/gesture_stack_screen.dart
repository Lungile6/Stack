import 'package:flutter/material.dart';

class GestureStackScreen extends StatelessWidget {
  void _onMarkerTapped(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Marker tapped!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture on Stack')),
      body: Stack(
        children: [
          Container(
            color: Colors.grey[300],
            width: double.infinity,
            height: double.infinity,
            child: Center(child: Text('Map Background')),
          ),
          Positioned(
            top: 200,
            left: 150,
            child: GestureDetector(
              onTap: () => _onMarkerTapped(context),
              child: Icon(Icons.location_on, color: Colors.red, size: 40),
            ),
          ),
        ],
      ),
    );
  }
}
