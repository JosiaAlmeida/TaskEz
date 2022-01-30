import 'package:flutter/material.dart';

class PhotoUserComponent extends StatelessWidget {
  const PhotoUserComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(1000)),
        ),
      ),
    );
  }
}
