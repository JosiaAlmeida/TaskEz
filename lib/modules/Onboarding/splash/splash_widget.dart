import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:taskez/Material/app_img.dart';
import 'package:taskez/modules/Onboarding/get_started/app_get_started.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.black,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            child: Stack(
              children: [
                SplashScreen(
                  seconds: 10,
                  navigateAfterSeconds: AppGetStard(),
                  loaderColor: Colors.transparent,
                ),
                Center(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(AppImage.logo),
                          fit: BoxFit.contain)),
                  width: size.width * 0.18,
                  height: size.height,
                )),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, size.height * 0.2, 0, 0),
                    child: Text.rich(TextSpan(
                        text: "Task",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "Ez",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          )
                        ])),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
