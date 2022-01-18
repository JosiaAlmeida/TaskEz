import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:taskez/controller/controller_provider.dart';

class AppSignUpWidget extends StatefulWidget {
  AppSignUpWidget({Key? key}) : super(key: key);

  @override
  _AppSignUpWidgetState createState() => _AppSignUpWidgetState();
}

class _AppSignUpWidgetState extends State<AppSignUpWidget> {
  var _controller = TextEditingController();
  late bool viewPass = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controllerProvider = context.watch<ControllerProvider>();
    return Container(
      width: size.width,
      height: size.height,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(TextSpan(
                    text: "Sign up\n",
                    style: TextStyle(fontSize: 50),
                    children: [
                      TextSpan(
                          text: "Using ",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 12)),
                      TextSpan(
                          text: controllerProvider.email.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      TextSpan(
                          text: " to login",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 12)),
                    ])),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0, size.height * 0.08, 0, size.height * 0.08),
                  child: TextFormField(
                    controller: _controller,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Your Name',
                        suffixIcon: InkWell(
                          child: Icon(
                            Icons.close,
                            size: 18,
                          ),
                          onTap: () => _controller.clear(),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, size.height * 0.08),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: viewPass,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Your Password',
                        suffixIcon: InkWell(
                          child: viewPass
                              ? Icon(
                                  Icons.remove_red_eye,
                                  size: 18,
                                )
                              : Icon(
                                  Icons.remove_red_eye_outlined,
                                  size: 18,
                                ),
                          onTap: () {
                            setState(() {
                              viewPass = !viewPass;
                              print(viewPass);
                            });
                          },
                        )),
                  ),
                ),
                Center(
                  child: Container(
                    width: size.width * 0.8,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue),
                    child: TextButton(
                      onPressed: () => Navigator.pushReplacementNamed(
                          context, "/changeworkspace"),
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
