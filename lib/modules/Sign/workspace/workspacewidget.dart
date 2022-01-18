import 'package:flutter/material.dart';
import 'package:taskez/Material/Component/photo_elements/photo_elements_component.dart';
import 'package:taskez/Material/Component/photo_user_component/photo_user_component.dart';

class ChangeWorkspace extends StatefulWidget {
  ChangeWorkspace({Key? key}) : super(key: key);

  @override
  _ChangeWorkspaceState createState() => _ChangeWorkspaceState();
}

class _ChangeWorkspaceState extends State<ChangeWorkspace> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("New Workspace"),
          actions: [PhotoUserComponent()],
        ),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              border: Border.all(
                  color: Colors.deepPurpleAccent.withOpacity(0.3), width: 1)),
          child: Column(
            children: [
              Center(
                child: PhotoElementsComponent(),
              ),
              Center(
                child: Text.rich(TextSpan(
                    text: "Stuart's Workspace\n\n",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text: "\t\t\t\t\tTap the to upload new logo",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 18))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
