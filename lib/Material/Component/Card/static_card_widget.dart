import 'package:flutter/material.dart';

class StaticCard extends StatelessWidget {
  const StaticCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Task",
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "50",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: Icon(
                  Icons.arrow_right_sharp,
                  size: 40,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
