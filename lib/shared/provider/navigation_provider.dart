import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  // HomePage
  int _index = 0;
  int get index => _index;

  set changeIndex(int index) {
    _index = index;
    notifyListeners();
  }
}
