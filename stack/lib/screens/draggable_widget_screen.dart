import 'package:flutter/material.dart';

class DraggableWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable Widget')),
      body: Stack(
        children: [
          Container(color: Colors.grey[300]),
          Positioned.fill(
            child: Draggable<String>(
              data: 'Item',
              feedback: Material(
                child: Icon(Icons.drag_indicator, size: 48),
              ),
              childWhenDragging: Container(),
              child: Align(
                alignment: Alignment.center,
                child: Icon(Icons.drag_indicator, size: 48),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
