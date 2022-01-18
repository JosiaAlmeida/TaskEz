import 'package:flutter/material.dart';
import 'package:taskez/Material/user_model.dart';

class ButtonContinueController {
  nextRoute(String route, BuildContext context) {
    Navigator.pushNamed(context, route);
  }
}
