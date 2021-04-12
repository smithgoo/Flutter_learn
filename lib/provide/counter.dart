import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int value;

  void increment() {
    value++;
    notifyListeners();
  }
}
