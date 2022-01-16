import 'package:flutter/material.dart';

class AppGetStard extends StatelessWidget {
  const AppGetStard({Key? key}) : super(key: key);

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
                    bottom: size.height * 0.2,
                    child: Container(
                      width: size.width * 0.8,
                      child: Text(
                        "Let's create a space for your workflows.",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )),
                Positioned(
                    bottom: size.height * 0.1,
                    child: Container(
                      width: size.width * 0.6,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100)),
                      child: TextButton(
                        onPressed: () {},
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
