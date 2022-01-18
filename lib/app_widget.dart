import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskez/controller/controller_provider.dart';
import 'package:taskez/modules/Onboarding/carousel/app_carousel_screen.dart';
import 'package:taskez/modules/Onboarding/get_started/app_get_started.dart';
import 'package:taskez/modules/Onboarding/splash/splash_widget.dart';
import 'package:taskez/modules/Sign/ConfirmEmail/app_email_widget.dart';
import 'package:taskez/modules/Sign/sign_up/app_sign_up_widget.dart';
import 'package:taskez/modules/Sign/workspace/workspacewidget.dart';
import 'package:taskez/shared/authGoogle/authGoogleController.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ControllerProvider())],
      child: MaterialApp(
          theme: ThemeData.dark(),
          // home: AppSignUpWidget(),
          initialRoute: '/',
          routes: {
            '/': (context) => SplashWidget(),
            '/getStartd': (_) => AppGetStard(),
            '/loginSwitch': (_) => AppCarouselScreen(),
            "/emaillogin": (_) => AppEmailWidget(),
            '/signup': (_) => AppSignUpWidget(),
            '/changeworkspace': (_) => ChangeWorkspace(),
          }),
    );
  }
}
