import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  String _message = '';
  String get message => _message;

  void textdetail(String text) {
    _message = text;
    notifyListeners();
  }
}
