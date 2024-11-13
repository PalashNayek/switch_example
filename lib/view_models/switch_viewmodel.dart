import 'package:flutter/material.dart';

class SwitchViewModel extends ChangeNotifier {
  bool _isSwitchedOn = false;

  bool get isSwitchedOn => _isSwitchedOn;

  void toggleSwitch() {
    _isSwitchedOn = !_isSwitchedOn;
    notifyListeners();
  }
}
