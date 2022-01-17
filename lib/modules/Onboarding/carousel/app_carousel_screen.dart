import 'package:flutter/material.dart';
import 'package:taskez/Material/Component/BottomContinueWithEmail/app_bottom_conitnue_email.dart';
import 'package:taskez/Material/app_img.dart';
import 'package:taskez/modules/Onboarding/carousel/app_carousel.dart';

class AppCarouselScreen extends StatefulWidget {
  AppCarouselScreen({Key? key}) : super(key: key);

  @override
  _AppCarouselScreenState createState() => _AppCarouselScreenState();
}

class _AppCarouselScreenState extends State<AppCarouselScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              CarouselImage(),
              AppBottomContinueEmail(),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.03),
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: size.width * 0.3,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white38, width: 1),
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(AppImage.Google),
                              fit: BoxFit.contain)),
                    ),
                    Container(
                      width: size.width * 0.3,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white38, width: 1),
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(AppImage.facebookIcon),
                              fit: BoxFit.contain)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.05),
                width: size.width,
                child: Center(
                  child: Text(
                    "By continuing you agree Taskez's Terms of Services & Privacy Policy",
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
