import 'package:flutter/material.dart';
import 'package:taskez/modules/Onboarding/carousel/app_carousel_screen.dart';
import 'package:taskez/modules/Onboarding/get_started/app_get_started.dart';
import 'package:taskez/modules/Onboarding/splash/splash_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: AppCarouselScreen(),
    );
  }
}
