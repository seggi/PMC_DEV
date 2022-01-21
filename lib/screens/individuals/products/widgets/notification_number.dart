import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget notificationNumber() {
  return Positioned(
      right: 0,
      top: 8,
      left: 25,
      child: Container(
        width: 18,
        height: 18,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: pmcTeal,
          shape: BoxShape.circle,
        ),
        child: Text(
          "5",
          style: TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
        ),
      ));
}
