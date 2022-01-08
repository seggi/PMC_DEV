import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget bottomWidget(context) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Text(
            "Hello Jean Paul",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Text(
            "Find black old man stock images in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection",
            style: TextStyle(
                color: pmcWhite54, fontWeight: FontWeight.w600, fontSize: 11),
          ),
        ),
        gridItemBox()
      ],
    ),
  );
}

Widget gridItemBox() {
  return Column(
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
                  color: pmcWhite30, borderRadius: BorderRadius.circular(12)),
              child: GestureDetector(
                child: Column(
                  children: [
                    Icon(
                      Icons.accessible_rounded,
                      color: pmcWhite54,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: Text(
                        "Insurance claim",
                        style: TextStyle(
                            color: pmcWhite54,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: 150,
              height: 150,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: pmcWhite30, borderRadius: BorderRadius.circular(12)),
              child: GestureDetector(
                child: Column(
                  children: [
                    Icon(
                      Icons.account_balance,
                      color: pmcWhite54,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Bank claim",
                      style: TextStyle(
                          color: pmcWhite54,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                  color: pmcWhite30, borderRadius: BorderRadius.circular(12)),
              child: GestureDetector(
                child: Column(
                  children: [
                    Icon(
                      Icons.accessible_rounded,
                      color: pmcWhite54,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Insurance claim",
                      style: TextStyle(
                          color: pmcWhite54,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: 150,
              height: 150,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: pmcWhite30, borderRadius: BorderRadius.circular(12)),
              child: GestureDetector(
                child: Column(
                  children: [
                    Icon(
                      Icons.account_balance,
                      color: pmcWhite54,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Bank claim",
                      style: TextStyle(
                          color: pmcWhite54,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    ],
  );
}
