import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/products/services/internet/internet_page.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget buyOptionDialog1(context, {required String pgImg}) {
  return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.black,
      insetPadding: EdgeInsets.all(20.0),
      contentPadding: EdgeInsets.all(0.0),
      titlePadding: EdgeInsets.all(0.0),
      content: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(14.0),
                child: Center(
                  child: Text(
                    'Are you requesting this service for the first time?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: pmcWhite30,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InternetServicePage(
                                      pgImg: pgImg,
                                    )));
                      },
                      child: Row(
                        children: [
                          Text(
                            "Yes",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: pmcWhite30,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "No",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ));
}
