import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_dev/screens/individuals/claim/products/claim/middle_item.dart';
import 'package:pmc_dev/screens/individuals/payment/installementPay/installement_payment_page.dart';
import 'package:pmc_dev/screens/individuals/payment/payment_page.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

import '../../product_details.dart';

Widget bottomItemBox(context, pgImg) {
  var isChanged;
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
                    width: 20,
                  ),
                  CheckBox(),
                  SizedBox(
                    height: 8,
                  ),
                  // Row(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Text("seller"),
                  //         SizedBox(
                  //           height: 4,
                  //         ),
                  //       ],
                  //     ),
                  //      Column(
                  //       children: [
                  //         Text("Price"),
                  //         SizedBox(
                  //           height: 4,
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  Divider(),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Item in stock",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300)),
                        Column(
                          children: [
                            Text("Discount",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ]),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                rectagleBox(
                                  Colors.white24,
                                  "0",
                                ),
                                SizedBox(
                                  width: 370,
                                ),
                                rectagleBox(
                                  Colors.white24,
                                  "5%",
                                ),
                              ],
                            ),
                          ],
                        ),

                        // Flexible(
                        //     child: Container(
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(12),
                        //       border: Border.all(color: pmcWhite54)),
                        //   child: TextFormField(
                        //     keyboardType: TextInputType.text,
                        //     textInputAction: TextInputAction.next,
                        //     decoration: InputDecoration(
                        //         hintText: 'Bread',
                        //         border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(10),
                        //           borderSide: BorderSide.none,
                        //         )),
                        //   ),
                        // )),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Price"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("1000 frw",
                                    style: TextStyle(
                                        color: Colors.red,
                                        decoration:
                                            TextDecoration.lineThrough)),
                                Text(
                                  "11112 frw",
                                )
                              ]),
                        ]),
                  ),
                  Divider(),
                  Container(
                    width: 500,
                    // color: Colors.amber,
                    padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "How many times do you need this product in a month?"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          child: TextField(
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                hintText: '1',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            "*The total cost will be affected by the number of times this product will be delivered to you in a month."),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How many Product(s) ?",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                ),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  )),
                            ),
                            Container(
                              width: 80,
                              child: TextField(
                                autocorrect: true,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    hintText: '1',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white54,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding:
                        const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                    child: Text(
                      "How do you wish to pay from your bank?",
                    ),
                  ),

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
                                  child: Text("Choose Installement",
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

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Container(
              alignment: Alignment.bottomLeft, child: Text("Choose Color")),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.all(Colors.red),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("red"),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.all(Colors.blue),
                      value: isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked1 = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("blue"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
