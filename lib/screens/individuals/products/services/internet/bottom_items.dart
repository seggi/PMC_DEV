import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/products/services/internet/internet_items_page.dart';
import 'package:pmc_dev/widgets/custom_input.dart';

Widget internetBottomItemBox(context, pgImg, serviceController) {
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
                child: Text("Internet Service",
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
                      Container(
                        child: Text("",
                            style: TextStyle(
                                color: Colors.white30,
                                fontSize: 14,
                                fontWeight: FontWeight.w300)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      formField("Router Number"),
                      SizedBox(
                        height: 5,
                      ),
                      formField("Owner's Name"),
                      SizedBox(
                        width: 5,
                      ),
                      formField("Quality Type"),
                      SizedBox(
                        width: 10,
                      ),
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
                                  color: Colors.teal,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.teal)),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              InternetItemsPage(
                                                pgImg: pgImg,
                                              )));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Comfirm",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
}

Widget customButton(context, txtBtn, customColor) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
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
