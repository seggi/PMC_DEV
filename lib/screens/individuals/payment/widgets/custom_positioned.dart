import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget customPositioned(context) {
  final double width = MediaQuery.of(context).size.width;
  return Positioned(
      child: Container(
          width: width,
          padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back)),
                  ),
                  Text(
                    "PAY DIRECTLY CONFIRMATION",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ],
              )
            ],
          )));
}

Widget customPositionedOthers(context) {
  final double width = MediaQuery.of(context).size.width;
  return Positioned(
      child: Container(
          width: width,
          padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ],
          )));
}
