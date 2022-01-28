import 'package:flutter/material.dart';
import 'package:taskez/Material/Component/palet_color/palet_color_widget.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
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
                      children: <InlineSpan>[
                        TextSpan(
                            text: "Tap the to upload new logo",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 12))
                      ])),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.08),
                  width: size.width,
                  child: Text("HOW MANY PEOPLE IN YOUR TEAM",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 12)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(size.width * 0.08,
                      size.height * 0.02, size.width * 0.03, 0),
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "11-02",
                        textAlign: TextAlign.start,
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.08),
                  width: size.width,
                  child: Text("INVITE PEOPLE IN YOUR WORKSPACE",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 12)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(size.width * 0.08,
                      size.height * 0.02, size.width * 0.02, 0),
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email Address",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.blue),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.08),
                  width: size.width,
                  child: Text(
                    "CHOOSE COLOR THEME",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PaletColor(),
                      PaletColor(),
                      PaletColor(),
                      PaletColor(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PaletColor(),
                      PaletColor(),
                      PaletColor(),
                      PaletColor(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PaletColor(),
                      PaletColor(),
                      PaletColor(),
                      PaletColor(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.02),
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.grey.shade300),
                        ),
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(100.0)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
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
