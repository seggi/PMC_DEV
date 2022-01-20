import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/payment/payment_page.dart';
import 'package:pmc_dev/screens/individuals/products/product_details.dart';

Widget boxedbottomWidget(context, pgImg, serviceController) {
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
                      "https://www.inyangeindustries.com/img/products/Inyange-Juice-image-icon-2.png"),
                  otherProductImageButton(context,
                      "https://www.inyangeindustries.com/img/products/Banners-01.jpg"),
                  otherProductImageButton(context,
                      "https://www.inyangeindustries.com/img/products/Inyange-Milk-image-icon-1.png"),
                  otherProductImageButton(context,
                      "https://www.inyangeindustries.com/img/products/Inyange-Water-image-icon-1.png"),
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
                        "Inyange Juice",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Rwf 2000",
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
                      "Inyange industries is engaged in the business of producing & selling a wide variety of fruit products, including fruit juice concentrates, fruit juice drinks & dairy related products. Our products are primarily sold to the local market, as well as regionally via Inyange certified distributors.",
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
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        Text("Box Type",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 18,
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
                              width: 5,
                            ),
                            rectagleBox(Colors.white24, "2"),
                            SizedBox(
                              width: 5,
                            ),
                            rectagleBox(Colors.white24, "3"),
                            SizedBox(
                              width: 5,
                            ),
                            rotateBox(Colors.white24, "...")
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Container(
                            width: 120.0,
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Colors.white24)),
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text("Small",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
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
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentPage()));
                            },
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
                                        fontSize: 18,
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
                          // width: 200,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.teal)),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text("Pay later",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
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
