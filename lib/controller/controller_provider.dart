import 'package:flutter/material.dart';

class ControllerProvider extends ChangeNotifier {
  String email = '';
  String get Email => email;

  getEmail(String v) {
    email = v;
    print(email);
    notifyListeners();
  }
}
