import 'package:flutter/material.dart';

class AnimationStackScreen extends StatefulWidget {
  @override
  _AnimationStackScreenState createState() => _AnimationStackScreenState();
}

class _AnimationStackScreenState extends State<AnimationStackScreen> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Stack')),
      body: Stack(
        children: [
          Container(color: Colors.blueGrey),
          Positioned(
            top: 50,
            left: 50,
            child: AnimatedOpacity(
              opacity: show ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: Container(
                padding: EdgeInsets.all(12),
                color: Colors.black54,
                child: Text(
                  'Animated Overlay',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => show = !show),
        child: Icon(Icons.refresh),
      ),
    );
  }
}
