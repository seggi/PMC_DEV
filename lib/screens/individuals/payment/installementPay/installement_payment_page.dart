import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/payment/installementPay/custom_positioned.dart';
import 'package:pmc_dev/screens/individuals/payment/installementPay/installement_payment.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

class InstallementPaymentPage extends StatefulWidget {
  InstallementPaymentPage({Key? key}) : super(key: key);

  @override
  _InstallementPaymentPageState createState() =>
      _InstallementPaymentPageState();
}

class _InstallementPaymentPageState extends State<InstallementPaymentPage> {
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
                      // child: PayDirectlyConfirmItemBox(context),
                      ),
                  Container(
                    child: InstallementPaymentItemBox(context),
                    height: 60,
                  )
                ],
              ),
            ),
          ),
          customPositioned(context),
        ]),
      ),
    )));
  }
}
