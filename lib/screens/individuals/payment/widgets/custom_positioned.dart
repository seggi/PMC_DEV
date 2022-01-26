import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget customPositioned(context) {
  final double width = MediaQuery.of(context).size.width;
  return Positioned(
      child: Container(
          width: width,
          padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        "PAY DIRECTLY CONFIRMATION",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )),
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
