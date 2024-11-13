import 'package:flutter/material.dart';
import 'package:switch_example/di/setup_locator.dart';
import 'package:switch_example/screens/switch_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchScreen(),
    );
  }
}
