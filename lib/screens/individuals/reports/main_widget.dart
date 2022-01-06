import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_dev/screens/individuals/reports/option_btn.dart';
import 'package:pmc_dev/screens/individuals/reports/products_list.dart';

Widget mainWiget(context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        optionBtn(),
        customCard(
            "https://assetscdn1.paytm.com/images/catalog/product/A/AP/APPPARE-MEN-S-LPARE106424044EC9BCD/1621073714784_0..jpeg"),
        customCard(
            "https://9to5mac.com/wp-content/uploads/sites/6/2021/08/iphone-13-crop.jpg?quality=82&strip=all"),
      ],
    ),
  );
}
