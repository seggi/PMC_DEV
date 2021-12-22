import 'package:flutter/material.dart';

Widget circleWiget() {
  return Center(
    child: Stack(
      children: [
        Positioned(
            child: Container(
          width: 270,
          height: 270,
          decoration: BoxDecoration(
            color: Colors.white10,
            shape: BoxShape.circle,
            // border: Border.all(color: Colors.black)
          ),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "P",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              ),
              Text(
                ")",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              ),
              Text(
                ")",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              Text(
                "PayingTone",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
            ],
          )),
        ))
      ],
    ),
  );
}

Widget firstCircle() {
  return Center(
    child: Stack(
      children: [
        Positioned(
            // bottom: 0,
            child: Container(
          width: 800,
          height: 500,
          decoration: BoxDecoration(
            // color: Colors.red,
            shape: BoxShape.rectangle,

            // border: Border.all(color: Colors.black)
          ),
        ))
      ],
    ),
  );
}
