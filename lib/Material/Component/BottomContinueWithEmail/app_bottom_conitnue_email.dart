import 'package:flutter/material.dart';

import 'package:taskez/Material/Component/BottomContinueWithEmail/buttoncontinueController.dart';

class AppBottomContinueEmail<E> extends StatefulWidget {
  final String router;
  final String? email;
  AppBottomContinueEmail({
    Key? key,
    required this.router,
    this.email,
  }) : super(key: key);

  @override
  _AppBottomContinueEmailState createState() => _AppBottomContinueEmailState();
}

class _AppBottomContinueEmailState extends State<AppBottomContinueEmail> {
  @override
  Widget build(BuildContext context) {
    ButtonContinueController _buttonController = ButtonContinueController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(40)),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, widget.router);
            print(widget.email);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Continue with Email",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
