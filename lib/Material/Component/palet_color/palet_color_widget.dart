import 'package:flutter/material.dart';

class PaletColor extends StatefulWidget {
  PaletColor({Key? key}) : super(key: key);

  @override
  _PaletColorState createState() => _PaletColorState();
}

class _PaletColorState extends State<PaletColor> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("Color picker"),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(100)),
        width: 20,
        height: 20,
      ),
    );
  }
}
