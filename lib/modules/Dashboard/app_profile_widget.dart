import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskez/Material/Component/Card/static_card_widget.dart';
import 'package:taskez/Material/Component/photo_user_component/photo_user_component.dart';

class AppProfileWidget extends StatefulWidget {
  AppProfileWidget({Key? key}) : super(key: key);

  @override
  State<AppProfileWidget> createState() => _AppProfileWidgetState();
}

class _AppProfileWidgetState extends State<AppProfileWidget> {
  double controller = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(
            "Dashboard",
            style: TextStyle(fontSize: 30.0),
          ),
          actions: [
            Container(
              child: Row(
                children: [Icon(Icons.message), PhotoUserComponent()],
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              width: size.width,
              child: Text(
                "Hello, Josia Almeida",
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              width: size.width,
              child: Row(
                children: [
                  Container(
                    decoration: controller == 1
                        ? BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(100))
                        : BoxDecoration(),
                    height: 40,
                    child: TextButton(
                      onPressed: () => setState(() {
                        controller = 1;
                      }),
                      child: Text(
                        "Overview",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    decoration: controller == 2
                        ? BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(100))
                        : BoxDecoration(),
                    height: 40,
                    margin: EdgeInsets.only(left: 5),
                    child: TextButton(
                      onPressed: () => setState(() {
                        controller = 2;
                      }),
                      child: Text("Productivy",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size.width / 4),
                    child: TextButton(
                      onPressed: () {},
                      child: Icon(Icons.drafts),
                    ),
                  )
                ],
              ),
            ),
            controller == 1
                ? Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(20.0), child: StaticCard()),
                      Container(
                          padding: EdgeInsets.all(20.0), child: StaticCard()),
                      Container(
                          padding: EdgeInsets.all(20.0), child: StaticCard()),
                    ],
                  )
                : Text("Productivy")
            // else{
            //   Text("Productivy")
            // }
          ],
        ),
        bottomNavigationBar: Container(
          height: 55,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Icon(FontAwesomeIcons.home)),
              TextButton(onPressed: () {}, child: Icon(FontAwesomeIcons.list)),
              Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade800,
                    borderRadius: BorderRadius.circular(1000),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        offset: Offset(-2, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ))),
              TextButton(
                  onPressed: () {}, child: Icon(FontAwesomeIcons.solidBell)),
              TextButton(
                  onPressed: () {},
                  child: Icon(FontAwesomeIcons.solidCommentDots))
            ],
          ),
        ),
      ),
    );
  }
}
