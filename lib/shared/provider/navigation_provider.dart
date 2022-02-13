import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  // Book Selection
  int _index = 0;
  int get index => _index;

  set changeIndex(int index) {
    _index = index;
    notifyListeners();
  }

  // ChapterSelection
  int _chapterIndex = 0;
  int get chapterIndex => _chapterIndex;

  set changeChapterIndex(int index) {
    _chapterIndex = index;
    notifyListeners();
  }
}
