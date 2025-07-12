import 'package:flutter/material.dart';
import 'screens/simple_overlay.dart';
import 'screens/positioned_widgets.dart';
import 'screens/complex_layout.dart';
import 'screens/clipping_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Examples',
      home: Scaffold(
        appBar: AppBar(title: Text('Stack Examples')),
        body: ExampleSelector(),
      ),
    );
  }
}

class ExampleSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Simple Overlay'),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SimpleOverlay()),
          ),
        ),
        ListTile(
          title: Text('Positioned Widgets'),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PositionedWidgets()),
          ),
        ),
        ListTile(
          title: Text('Complex Layout with Images'),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ComplexLayout()),
          ),
        ),
        ListTile(
          title: Text('Clipping Example'),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ClippingExample()),
          ),
        ),
      ],
    );
  }
}