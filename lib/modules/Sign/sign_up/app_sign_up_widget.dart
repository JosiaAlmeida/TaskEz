import 'package:flutter/material.dart';

class AppSignUpWidget extends StatefulWidget {
  AppSignUpWidget({Key? key}) : super(key: key);

  @override
  _AppSignUpWidgetState createState() => _AppSignUpWidgetState();
}

class _AppSignUpWidgetState extends State<AppSignUpWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign",
                  style: TextStyle(fontSize: 50),
                ),
                // TextFormField(
                //   decoration: ,
                // )
                Center(
                  child: Container(
                    width: size.width * 0.8,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Criar Conta",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
