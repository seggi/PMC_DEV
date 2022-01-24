import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
// import 'package:commingle_app/widgets/share/style.dart';

Widget DeliveryRecurrencyDialog() {
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
                    'How often do you need this product to be delivered?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                        child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "One Time Delivery",
                        style: TextStyle(color: pmcBlack87, fontSize: 11),
                      ),
                    )),
                    Flexible(
                        child: Container(
                            padding: EdgeInsets.all(0.0),
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: pmcCyan,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: TextButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.double_arrow_outlined,
                                  color: Colors.white54,
                                ))))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                        child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Recuring Delivery",
                        style: TextStyle(color: pmcBlack87, fontSize: 11),
                      ),
                    )),
                    Flexible(
                        child: Container(
                            padding: EdgeInsets.all(0.0),
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: pmcCyan,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: TextButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.double_arrow_outlined,
                                  color: Colors.white54,
                                ))))
                  ],
                ),
              )
            ],
          ),
        ),
      ));
}
