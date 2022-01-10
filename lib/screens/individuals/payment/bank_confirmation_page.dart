import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
import 'widgets/bottom_bank_confirmation.dart';
import 'widgets/custom_positioned.dart';

class BankConfirmationPage extends StatefulWidget {
  BankConfirmationPage({Key? key}) : super(key: key);

  @override
  _BankConfirmationPageState createState() => _BankConfirmationPageState();
}

class _BankConfirmationPageState extends State<BankConfirmationPage> {
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
                    child: bottomItemBoxBankConfirmation(context),
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
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Download letter",
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
