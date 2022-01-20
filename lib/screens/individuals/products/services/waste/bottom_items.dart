import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/payment/payment_page.dart';
import 'package:pmc_dev/widgets/custom_input.dart';

Widget bottomItemBox(context, pgImg, serviceController) {
  return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white24,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Public Roads",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800))),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              // MIddle Text And Widgets
              child: Column(
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      formField("Plot Number"),
                      SizedBox(
                        width: 10,
                      ),
                      formField("Plot owner names"),
                      SizedBox(
                        width: 10,
                      ),
                      formField("sector"),
                      SizedBox(
                        width: 10,
                      ),
                      formField("Cell"),
                      SizedBox(
                        width: 10,
                      ),
                      formField("Village"),
                      SizedBox(
                        width: 10,
                      ),
                      formField("Amount to pay"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.teal)),
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.storage_outlined,
                                      color: Colors.teal,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Pay Now",
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.teal)),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PaymentPage()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text("Pay later",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ));
}

Widget customButton(context, txtBtn, customColor) {
  return Container(
    padding: EdgeInsets.only(left: 10, right: 10),
    decoration: BoxDecoration(
        color: customColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10)),
    child: TextButton(
      onPressed: () {},
      child: Text(txtBtn,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800)),
    ),
  );
}
