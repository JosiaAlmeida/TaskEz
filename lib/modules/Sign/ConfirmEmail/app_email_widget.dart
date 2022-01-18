import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:taskez/Material/Component/BottomContinueWithEmail/app_bottom_conitnue_email.dart';
import 'package:taskez/Material/Component/BottomContinueWithEmail/buttoncontinueController.dart';
import 'package:taskez/Material/user_model.dart';
import 'package:taskez/controller/controller_provider.dart';

class AppEmailWidget extends StatefulWidget {
  AppEmailWidget({Key? key}) : super(key: key);

  @override
  _AppEmailWidgetState createState() => _AppEmailWidgetState();
}

class _AppEmailWidgetState extends State<AppEmailWidget> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = context.watch<ControllerProvider>();
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
                  controller: _controller,
                  validator: (value) {
                    if (value.toString() == '' || value.toString() == null) {
                      return "Preencha os passos vasios";
                    }
                  },
                  onChanged: (v) {
                    setState(() {
                      controller.getEmail(v);
                    });
                  },
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Your Email',
                      suffixIcon: InkWell(
                        child: Icon(
                          Icons.close,
                          size: 18,
                        ),
                        onTap: () => _controller.clear(),
                      )),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              AppBottomContinueEmail(router: "/signup"),
            ],
          ),
        ),
      ),
    );
  }
}
