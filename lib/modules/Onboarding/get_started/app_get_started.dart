import 'package:flutter/material.dart';
import 'package:taskez/Material/app_img.dart';

class AppGetStard extends StatelessWidget {
  const AppGetStard({Key? key}) : super(key: key);

  Widget BoxCheck(size) {
    return Container(
      width: size.width * 0.5,
      height: size.height * 0.08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black87.withOpacity(0.6)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: size.width * 0.1,
              height: size.height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      colors: [Colors.pinkAccent, Colors.deepPurple])),
              child: Icon(Icons.check),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.2,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, size.height * 0.01, 0, 0),
                    width: size.width * 0.1,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Positioned(
                    right: 0,
                    bottom: size.height * 0.8,
                    child: Container(
                      width: size.width * 0.19,
                      height: size.height * 0.11,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(
                              colors: [Colors.deepPurpleAccent, Colors.pink]),
                          image: DecorationImage(
                              image: AssetImage(AppImage.girlSmile),
                              fit: BoxFit.cover)),
                    )),
                Positioned(
                    right: size.width * 0.15, top: 0, child: BoxCheck(size)),
                Positioned(
                    left: 0,
                    bottom: size.height * 0.6,
                    child: Container(
                      width: size.width * 0.25,
                      height: size.height * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(
                              colors: [Colors.orange, Colors.deepOrangeAccent]),
                          image: DecorationImage(
                              image: AssetImage(AppImage.HeadCut),
                              fit: BoxFit.cover)),
                    )),
                Positioned(
                    left: size.width * 0.2,
                    bottom: size.height * 0.70,
                    child: BoxCheck(size)),
                Positioned(
                    right: size.width * 0.3,
                    bottom: size.height * 0.4,
                    child: Container(
                      width: size.width * 0.32,
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.lightBlueAccent,
                          image: DecorationImage(
                              image: AssetImage(AppImage.ManHead),
                              fit: BoxFit.contain)),
                    )),
                Positioned(
                    right: size.width * 0,
                    bottom: size.height * 0.55,
                    child: BoxCheck(size)),
                Positioned(
                    bottom: size.height * 0.2,
                    child: Container(
                      width: size.width * 0.8,
                      child: Text.rich(TextSpan(
                          text: "Task Management\n",
                          style: TextStyle(color: Colors.purpleAccent),
                          children: [
                            TextSpan(
                              text: "Let's create a space for your workflows.",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ])),
                    )),
                Positioned(
                    bottom: size.height * 0.1,
                    child: Container(
                      width: size.width * 0.6,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: TextButton(
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context, '/loginSwitch', (route) => false),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
