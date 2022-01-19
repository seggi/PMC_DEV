import 'package:flutter/material.dart';

import '../../../product_details.dart';

Widget phonebottomWidget(context, pgImg, serviceController) {
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
                      "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MHL83_AV3?wid=2000&hei=2000&fmt=jpeg&qlt=80&.v=1601149109000"),
                  otherProductImageButton(context,
                      "https://fdn.gsmarena.com/imgroot/news/20/10/iphone-12-roundup/-1200/gsmarena_001.jpg"),
                  otherProductImageButton(context,
                      "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MKTY3_AV2?wid=1144&hei=1144&fmt=jpeg&qlt=80&.v=1622141743000"),
                  otherProductImageButton(context,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA7KH11wWhFPpxpBaxLWh0h23USyCJm7Pkww&usqp=CAU"),
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
                        "Iphone 12",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Rwf 1,200,000",
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
                      "Following the launch of Apple's iPhone 13 lineup of phones, both the iPhone 12 Pro and the iPhone 12 Pro Max disappeared from Apple's store. Both the iPhone 12 Pro and iPhone 12 Pro are now discontinued, at least if you want to get one via Apple.",
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
                        Text("Storage",
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
                            width: 60.0,
                            height: 40.0,
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
                                  Text("256",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 60.0,
                          height: 40.0,
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
                                Text("512",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300)),
                              ],
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
