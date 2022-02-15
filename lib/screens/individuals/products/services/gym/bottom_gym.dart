import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/payment/payment_page.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
import 'package:pmc_dev/widgets/custom_input.dart';

import '../../product_details.dart';

Widget gymBottomItemBox(context, pgImg) {
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
                      "https://res.cloudinary.com/payingtone/image/upload/v1644534921/images/zqvnm8aapr2ipvetwv5r.jpg"),
                  otherProductImageButton(context,
                      "https://res.cloudinary.com/payingtone/image/upload/v1644534921/images/r9u52doicpgocvnaipli.jpg"),
                  otherProductImageButton(context,
                      "https://res.cloudinary.com/payingtone/image/upload/v1644534924/images/zlpgl0bm5ea4ojlb5akm.jpg"),
                  otherProductImageButton(context,
                      "https://res.cloudinary.com/payingtone/image/upload/v1644534924/images/bkq8j8x2nyu1nzchnqrf.jpg"),
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
                        "Cali Gym",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Gym Subscription Category Detail",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   padding: const EdgeInsets.all(4.0),
                  //   margin: EdgeInsets.only(top: 20.0),
                  //   decoration: BoxDecoration(
                  //       color: Colors.white12,
                  //       borderRadius: BorderRadius.circular(5.0)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Flexible(
                  //           child: TextButton(
                  //         onPressed: () {},
                  //         child: Text(
                  //           "Semester (6 months subscription)",
                  //           style: TextStyle(color: pmcWhite24, fontSize: 14),
                  //         ),
                  //       )),

                  //       Flexible(
                  //           child: Container(
                  //               // padding: EdgeInsets.all(0.0),
                  //               // height: 40,
                  //               // width: 50,
                  //               // decoration: BoxDecoration(
                  //               //     color: pmcCyan,
                  //               //     borderRadius: BorderRadius.circular(8.0)),
                  //               child: TextButton(
                  //                   onPressed: () {},
                  //                   child: Icon(
                  //                     Icons.download_for_offline,
                  //                     color: Colors.white54,
                  //                   ))))
                  //     ],
                  //   ),
                  // ),
                  Container(child: CustomDropDownBox1()),

                  SizedBox(height: 30),
                  // Divider(),
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
                              Text("Kigali Gym"),
                            ],
                          ),
                        ]),
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
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             ProductTermsAndConditions()));
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
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             InstallementPaymentPage()));
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

class CustomDropDownBox1 extends StatefulWidget {
  const CustomDropDownBox1({Key? key}) : super(key: key);

  @override
  State<CustomDropDownBox1> createState() => _CustomDropDownBox1State();
}

class _CustomDropDownBox1State extends State<CustomDropDownBox1> {
  String dropdownValue = 'Monthly subscription';

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(const Size(400, 50)),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 16,
        style: const TextStyle(color: Colors.white54),
        underline: SizedBox(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>[
          'Monthly subscription',
          'Semester (6 months subscription)',
          'Nine-months (9 months)',
          'Trimester (3 months subscription)',
          'Yearly (12 months)',
          'Monthly (once off)'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
