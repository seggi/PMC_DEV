import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget ServicePaymentDialog() {
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
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'How often do you wish to Pay This Service? ',
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
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Once",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Wrap(
                            direction: Axis.vertical,
                            children: [
                              Icon(Icons.arrow_drop_up, color: Colors.white54),
                              // SizedBox(height: 0),
                              Icon(Icons.arrow_drop_down, color: Colors.white54)
                            ],
                          ),
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
                            "Monthly",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Wrap(
                            direction: Axis.vertical,
                            children: [
                              Icon(Icons.arrow_drop_up, color: Colors.white54),
                              SizedBox(height: 0),
                              Icon(Icons.arrow_drop_down, color: Colors.white54)
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.only(top: 10.0),
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
                        "Confirm",
                        style: TextStyle(color: Colors.white54, fontSize: 11),
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
