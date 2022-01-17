import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taskez/app_widget.dart';

void main() {
  runApp(const AppWidget());
}

class ConnectFirebase extends StatefulWidget {
  ConnectFirebase({Key? key}) : super(key: key);

  @override
  _ConnectFirebaseState createState() => _ConnectFirebaseState();
}

class _ConnectFirebaseState extends State<ConnectFirebase> {
  final Future<FirebaseApp> _future = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container(
            child: Text(
              "Nao foi possivel carregar o firebase",
              textDirection: TextDirection.ltr,
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else {
          return Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
