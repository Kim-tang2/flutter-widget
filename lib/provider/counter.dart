import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _count = 0; //private

  int get count => _count;

  void incrementCounter() {
    _count++;
    notifyListeners();
  }

  void decrementCounter() {
    _count--;
    notifyListeners();
  }
}//12345678