import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget productListBg(context) {
  final double height = MediaQuery.of(context).size.height;
  return Container(
    height: height,
    margin: EdgeInsets.only(top: 200),
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),
    ),
  );
}

Widget customCard(wImg) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 10),
    color: Colors.black87,
    child: SingleChildScrollView(
      child: Card(
        margin: EdgeInsets.all(0.0),
        color: Colors.white24,
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: singleImage(wImg),
                        ),
                        Container(width: 2, height: 80, color: Colors.white30),
                        Container(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Classic Italian Jacket",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)),
                            Divider(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sell: ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                Text("Moshions LTD",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                            Divider(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Purchase Date: ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                Text("18-01-2022",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                            Divider(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Quantity: ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                Text("1 pair of suit",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600))
                              ],
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(24),
                              topRight: Radius.circular(24),
                            )),
                      ),
                      Container(
                        width: 250,
                        child: Divider(
                          color: Colors.white30,
                          thickness: 1,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              bottomLeft: Radius.circular(24),
                            )),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Amount paid by BK",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 14,
                                fontWeight: FontWeight.w800)),
                        SizedBox(
                          width: 5,
                        ),
                        Text('700,000',
                            maxLines: 2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800)),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Divider(
                              height: 6,
                            ),
                            Text("Rwf",
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget singleImage(imageUrls) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(12),
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
      image: DecorationImage(image: NetworkImage(imageUrls), fit: BoxFit.fill),
    ),
  );
}
