import 'package:flutter/material.dart';

extension ExtendedNavigator on BuildContext {
  Future<dynamic> push(Widget page) async {
    Navigator.push(this, MaterialPageRoute(builder: (_) => page));
  }

  Future<dynamic> pushReplacement(Widget page) async {
    Navigator.pushReplacement(this, MaterialPageRoute(builder: (_) => page));
  }

  void pop(Widget page, [result]) async {
    return Navigator.of(this).pop(result);
  }
}
