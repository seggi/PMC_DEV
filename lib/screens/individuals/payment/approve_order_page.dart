import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/payment/widgets/bottom_item_approve_order.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
import 'package:pmc_dev/widgets/popup/buy_option_dialog.dart';
import 'package:pmc_dev/widgets/popup/cart_dialog.dart';
import 'package:pmc_dev/widgets/popup/delivery_dialog.dart';
import 'package:pmc_dev/widgets/popup/opt_code_dialog.dart';
import 'package:pmc_dev/widgets/popup/service_payment_dialog.dart';
import 'widgets/custom_positioned.dart';

class ApproveOrderPage extends StatefulWidget {
  ApproveOrderPage({Key? key}) : super(key: key);

  @override
  _ApproveOrderPageState createState() => _ApproveOrderPageState();
}

class _ApproveOrderPageState extends State<ApproveOrderPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
        child: SafeArea(
            child: Scaffold(
      body: Container(
        child: Stack(children: [
          Container(
            height: height,
            margin: EdgeInsets.only(top: 80),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: pmcBlack87,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: bottomItemBoxApproveOrder(context),
                  ),
                  Container(
                    height: 60,
                  )
                ],
              ),
            ),
          ),
          customPositionedOthers(context),
          Positioned(
              bottom: 32,
              child: Container(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: pmcCyan,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.teal)),
                      child: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             BankConfirmationPage()));
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => DeliveryDialog(),
                            // optCodeDialog()
                            // ServicePaymentDialog()
                            // cartDialog()
                            // BuyOptionDialog()
                            // DeliveryDialog()
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Approve",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: pmcCyan,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.teal)),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.cancel_sharp,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Decline",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ]),
      ),
    )));
  }
}
