import 'package:flutter/material.dart';
import 'screens/floating_button_screen.dart';
import 'screens/badge_notification_screen.dart';
import 'screens/profile_status_screen.dart';
import 'screens/draggable_widget_screen.dart';
import 'screens/animation_stack_screen.dart';
import 'screens/loader_overlay_screen.dart';
import 'screens/tooltip_stack_screen.dart';
import 'screens/gesture_stack_screen.dart';

void main() {
  runApp(StackDemoApp());
}

class StackDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stack Examples',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> examples = [
    {'title': 'Floating Button on Card', 'screen': FloatingButtonScreen()},
    {'title': 'Badge Notification', 'screen': BadgeNotificationScreen()},
    {'title': 'Profile with Status', 'screen': ProfileStatusScreen()},
    {'title': 'Draggable Widget', 'screen': DraggableWidgetScreen()},
    {'title': 'Stack with Animation', 'screen': AnimationStackScreen()},
    {'title': 'Loader Overlay', 'screen': LoaderOverlayScreen()},
    {'title': 'Tooltip in Stack', 'screen': TooltipStackScreen()},
    {'title': 'Gesture on Map Marker', 'screen': GestureStackScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Examples')),
      body: ListView.builder(
        itemCount: examples.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(examples[index]['title']),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => examples[index]['screen'],
              ));
            },
          );
        },
      ),
    );
  }
}
