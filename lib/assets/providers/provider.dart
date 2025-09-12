import 'package:flutter/material.dart';

class AddressProvider1 with ChangeNotifier {
  int points = 0;
  setIndex(int number) {
    points = number;
    notifyListeners();
  }
}
