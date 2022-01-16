import 'package:flutter/material.dart';
import 'package:taskez/modules/splash/splash_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SplashWidget(),
    );
  }
}
