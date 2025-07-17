import 'package:flutter/material.dart';

class TooltipStackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tooltip in Stack')),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(Icons.info_outline, size: 48),
            Positioned(
              top: -30,
              left: 0,
              child: Material(
                elevation: 4,
                color: Colors.transparent,
                child: Container(
                  padding: EdgeInsets.all(6),
                  color: Colors.black87,
                  child: Text(
                    'Info Tooltip',
                    style: TextStyle(color: Colors.white, fontSize: 12),
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
