import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:taskez/modules/Onboarding/carousel/app_carousel_screen.dart';
import 'package:taskez/modules/Onboarding/get_started/app_get_started.dart';
import 'package:taskez/modules/Onboarding/splash/splash_widget.dart';
import 'package:taskez/modules/Sign/ConfirmEmail/app_email_widget.dart';
import 'package:taskez/modules/Sign/sign_up/app_sign_up_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        // home: AppSignUpWidget(),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashWidget(),
          '/getStartd': (_) => AppGetStard(),
          '/loginSwitch': (_) => AppCarouselScreen(),
          '/signup': (_) => AppSignUpWidget(),
          "/emaillogin": (_) => AppEmailWidget()
        });
  }
}
