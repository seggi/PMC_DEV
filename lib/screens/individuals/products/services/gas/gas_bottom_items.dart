import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/payment/installementPay/installement_payment_page.dart';
import 'package:pmc_dev/screens/individuals/payment/payment_page.dart';

Widget gasBottomItemBox1(context, pgImg, serviceController) {
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
                child: Text("Cooking Gas",
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
                      Text(
                        "Original gas from rwanda",
                      ),
                      Divider(),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Bill",
                                style: TextStyle(
                                    color: Colors.white30,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300)),
                            Text("9,500Rwf"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    width: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("Extra Costs With Addition Accessories"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Gas tank price"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("25000 Rwf"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Gas pipe cost"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("2000 Rwf"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gas regulator cost"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("1000 Rwf"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Service Cost"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("500 Rwf"),
                      ],
                    ),
                  ),
                  Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Seller"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Muhire Jean"),
                        ],
                      ),
                    ],
                  ),
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
                                    Text("Pay Directly",
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
                                          builder: (context) =>
                                              InstallementPaymentPage()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text("choose installment",
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
