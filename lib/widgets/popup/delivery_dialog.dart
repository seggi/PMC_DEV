import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget DeliveryDialog() {
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
                    'How do you wish to get this product ?  ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Icon(Icons.circle),
                    Container(
                      decoration: BoxDecoration(
                          // color: pmcWhite30,
                          // borderRadius: BorderRadius.circular(12.0)
                          ),
                      child: TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            // Icon(Icons.circle),
                            Text(
                              "",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            // color: pmcWhite30,
                            // borderRadius: BorderRadius.circular(12.0)
                            ),
                        // child: TextButton(
                        //   onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.circle),
                            Text(
                              "I will pick up the product by myself",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            // color: pmcWhite30,
                            // borderRadius: BorderRadius.circular(12.0)
                            ),
                        // child: TextButton(
                        //   onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.circle),
                            Text(
                              "I prefer the product to be delivered ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
}
