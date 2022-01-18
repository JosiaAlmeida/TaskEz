import 'package:flutter/material.dart';

class PhotoElementsComponent extends StatelessWidget {
  const PhotoElementsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(1000)),
        ),
      ),
    );
  }
}
