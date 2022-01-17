import 'package:flutter/material.dart';
import 'package:taskez/Material/Component/BottomContinueWithEmail/app_bottom_conitnue_email.dart';

class AppEmailWidget extends StatefulWidget {
  AppEmailWidget({Key? key}) : super(key: key);

  @override
  _AppEmailWidgetState createState() => _AppEmailWidgetState();
}

class _AppEmailWidgetState extends State<AppEmailWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                width: size.width * 0.9,
                child: Text(
                  "What's your email addres?",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Your Email',
                      suffixIcon: InkWell(
                        child: Icon(
                          Icons.close,
                          size: 18,
                        ),
                        onTap: () {},
                      )),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              AppBottomContinueEmail(),
            ],
          ),
        ),
      ),
    );
  }
}
