import 'package:flutter/material.dart';
import 'package:taskez/Material/app_img.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Scaffold(
          body: Container(
        child: Stack(
          children: [
            Center(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(AppImage.logo), fit: BoxFit.contain)),
              width: size.width * 0.18,
              height: size.height,
            )),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, size.height * 0.2, 0, 0),
                child: Text.rich(TextSpan(
                    text: "Task",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
