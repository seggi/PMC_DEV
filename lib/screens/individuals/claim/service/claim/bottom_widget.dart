import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_dev/screens/individuals/claim/products/claim/product_claim1_page.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

import 'middle_item.dart';

Widget bottomWidget(context) {
  return SingleChildScrollView(
      child: Column(
    children: [
      Container(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "Chat with us",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      bottomItem(context),
      buttomBtn(context),
    ],
  ));
}

Widget bottomItem(context) {
  return Container(
    padding: EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        middleItems(),
        SizedBox(
          height: 20,
        ),
        msgItem(),
        SizedBox(
          height: 20,
        ),
        numberBox(),
      ],
    ),
  );
}

Widget numberBox() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 40,
        ),
        Text(
          "1",
          style: TextStyle(
              fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
        ),
        Container(
          width: 50,
          height: 25,
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            color: pmcWhite30,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: Text(
            "2",
            style: TextStyle(
                fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    ),
  );
}

Widget buttomBtn(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(20.0),
    decoration: BoxDecoration(
      color: pmcWhite30,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),
    ),
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            color: pmcCyan, borderRadius: BorderRadius.circular(24)),
        padding: EdgeInsets.all(5.0),
        child: TextButton(
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => ServiceClaimPage()));
          },
          child: Text(
            "Next page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
