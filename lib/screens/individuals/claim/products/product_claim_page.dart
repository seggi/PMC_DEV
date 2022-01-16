import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/claim/widgets/custom_positioned.dart';

import 'bottom_widget.dart';

class ProductClaimPage extends StatefulWidget {
  ProductClaimPage({Key? key}) : super(key: key);

  @override
  _ProductClaimPageState createState() => _ProductClaimPageState();
}

class _ProductClaimPageState extends State<ProductClaimPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
            height: height,
            child: Stack(children: [
              Container(
                height: height,
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                padding: EdgeInsets.all(0.0),
                child: bottomWidget(context),
              ),
              customPositioned(context)
            ])),
      ),
    );
  }
}
