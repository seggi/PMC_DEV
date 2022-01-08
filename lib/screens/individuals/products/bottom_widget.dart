import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/products/product_widget.dart';
import 'widgets/other_Items.dart';

Widget bottomWidget(context) {
  return Column(
    children: [
      optionItems(context),
      SizedBox(
        height: 20,
      ),
      seachBox(),
      SizedBox(
        height: 10,
      ),
      articalBox(),
      SizedBox(
        height: 10,
      ),
      productDisplay(context),
      SizedBox(
        height: 10,
      ),
      populArticalBox(),
      SizedBox(
        height: 10,
      ),
      productRowList(),
      allArticalTitle(),
      categoryItem(context)
    ],
  );
}

Widget articalBox() {
  return Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
      children: [
        Text(
          "Products",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "flequently bought items",
          style: TextStyle(
              color: Colors.white70, fontSize: 10, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}

Widget allArticalTitle() {
  return Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
      children: [
        Text(
          "All Item Categories.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    ),
  );
}

Widget populArticalBox() {
  return Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
      children: [
        Text(
          "Popular",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "clothing",
          style: TextStyle(
              color: Colors.white70, fontSize: 10, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}
