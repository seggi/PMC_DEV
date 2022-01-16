import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/claim/widgets/custom_positioned.dart';

import 'bottom_widget.dart';

class ServiceClaimPage extends StatefulWidget {
  ServiceClaimPage({Key? key}) : super(key: key);

  @override
  _ServiceClaimPageState createState() => _ServiceClaimPageState();
}

class _ServiceClaimPageState extends State<ServiceClaimPage> {
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
