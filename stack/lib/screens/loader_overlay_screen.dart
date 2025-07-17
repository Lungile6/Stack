import 'package:flutter/material.dart';

class LoaderOverlayScreen extends StatefulWidget {
  @override
  _LoaderOverlayScreenState createState() => _LoaderOverlayScreenState();
}

class _LoaderOverlayScreenState extends State<LoaderOverlayScreen> {
  bool isLoading = false;

  void toggleLoading() {
    setState(() => isLoading = !isLoading);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Loader Overlay')),
      body: Stack(
        children: [
          Center(child: Text('Main Content')),
          if (isLoading)
            Container(
              color: Colors.black45,
              child: Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleLoading,
        child: Icon(Icons.sync),
      ),
    );
  }
}
