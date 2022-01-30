import 'package:flutter/material.dart';

class PaletColor extends StatefulWidget {
  Color color;
  PaletColor({required this.color, Key? key}) : super(key: key);

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
            color: widget.color, borderRadius: BorderRadius.circular(100)),
        width: 20,
        height: 20,
      ),
    );
  }
}
