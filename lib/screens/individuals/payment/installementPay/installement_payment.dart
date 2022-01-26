import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget installementPaymentItemBox(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        Container(
          child: Text(
            "Installments Payments",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        gridButton(context)
      ],
    ),
  );
}

// Rounded dots

Widget roundedDots() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white54,
      shape: BoxShape.circle,
    ),
    height: 15,
    width: 10,
  );
}

// Payment Input

// Grid Button

Widget gridButton(context) {
  return Container(
      child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text("1 Month"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Payment is the transfer of money or goods and services.")
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text("3 Months"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Payment is the transfer of money or goods and services.")
                ],
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text("5 Months"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Payment is the transfer of money or goods and services.")
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text("9 Months"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Payment is the transfer of money or goods and services.")
                ],
              ),
            ),
          )
        ],
      ),
    ],
  ));
}
