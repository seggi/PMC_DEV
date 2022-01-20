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
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back)),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  child: Stack(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            size: 24,
                          )),
                    ],
                  ),
                ),
              ]),
            ],
          )));
}
