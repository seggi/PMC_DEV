import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget bottomItemBoxBankConfirmation(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Align(
          child: Text(
            "Bank Confirmation",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        desplayDetails(context)
      ],
    ),
  );
}

Widget desplayDetails(context) {
  return Column(
    children: [
      Container(
        height: 10,
        decoration: BoxDecoration(
            color: pmcCyan900, borderRadius: BorderRadius.circular(12)),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: pmcWhite30,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Text(
              "Definitions for PAYMEN PAYMEN. Here are all the possible meanings and translations of the word PAYMEN. Did you actually mean papuan or ..."),
        ),
      )
    ],
  );
}
