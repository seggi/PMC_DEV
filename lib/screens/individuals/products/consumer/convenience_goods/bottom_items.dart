import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_dev/screens/individuals/payment/payment_page.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

import '../../product_details.dart';

Widget bottomItemBox(context, pgImg) {
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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  otherProductImageButton(context,
                      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/easy-bread-7455dce.jpg"),
                  otherProductImageButton(context,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaaLwJJdaLEXj9kqVq2_-S3SiZIwAClLXsrF6EVZvezrQ8VgPEQ9n6zHpHLmynqkxNJ8c&usqp=CAU"),
                  otherProductImageButton(context,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5z13gFPAYP-kMG9Ysp0EC7xqh65a7JsCd2g&usqp=CAU"),
                  otherProductImageButton(context,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGH-aJOB_66QrLKzmzrqG3EykiZx1EJAOifA&usqp=CAU"),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bread",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "1000 Rwf",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Text(
                      "Discover our extensive range of Coats & Jackets Sale online at House of Fraser. Shop online or in-store for some of the UK's favourite products.",
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Quantity",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        Text("Bread Type",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16,
                                fontWeight: FontWeight.w600))
                      ]),
                  Container(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            rectagleBox(
                              Colors.white24,
                              "1",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            rectagleBox(Colors.white24, "2"),
                            SizedBox(
                              width: 20,
                            ),
                            rectagleBox(Colors.white24, "3"),
                            SizedBox(
                              width: 20,
                            ),
                            rotateBox(Colors.white24, "...")
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                            child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: pmcWhite54)),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                hintText: 'Bread',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        )),
                      ],
                    ),
                  ),
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
            ),
          ],
        ),
      ));
}
