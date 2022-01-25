import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/payment/widgets/pay_directly_confirm.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
import 'widgets/custom_positioned.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                    child: PayDirectlyConfirmItemBox(context),
                  ),
                  Container(
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
