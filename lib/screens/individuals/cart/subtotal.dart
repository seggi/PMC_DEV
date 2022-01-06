import 'package:flutter/material.dart';

Widget subTotalBox() {
  return Container(
    child: Column(
      children: [
        SizedBox(
          height: 40,
        ),
        subTotalTile("SubTotal", "1,400,000"),
        SizedBox(
          height: 10,
        ),
        subTotalTile("Delivery Fee", "15,000"),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

Widget subTotalTile(titleText, tedtDetails) {
  return Container(
    padding: EdgeInsets.only(left: 24, right: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            children: [
              Text(titleText,
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Rwf",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w800)),
            SizedBox(
              width: 5,
            ),
            Text(tedtDetails,
                maxLines: 2,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800)),
          ],
        )
      ],
    ),
  );
}
