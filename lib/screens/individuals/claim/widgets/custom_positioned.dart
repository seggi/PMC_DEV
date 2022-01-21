import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/cart/cart_page.dart';

import 'notification_number.dart';

Widget customPositioned(context) {
  final double width = MediaQuery.of(context).size.width;
  return Positioned(
      child: Container(
    width: width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            margin: EdgeInsets.all(20),
            width: 50,
            height: 40,
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.west_outlined,
                size: 28,
                color: Colors.white,
              ),
            )),
        Text(
          "Claim",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Container(
          padding: EdgeInsets.only(right: 10),
          child: Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 24,
                  )),
              notificationNumber()
            ],
          ),
        ),
      ],
    ),
  ));
}
