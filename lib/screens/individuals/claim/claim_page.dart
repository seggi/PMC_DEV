import 'package:flutter/material.dart';

import 'bottom_widget.dart';
import 'widgets/custom_positioned.dart';

class ClaimPage extends StatefulWidget {
  ClaimPage({Key? key}) : super(key: key);

  @override
  _ClaimPageState createState() => _ClaimPageState();
}

class _ClaimPageState extends State<ClaimPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
            height: height,
            child: Stack(children: [
              productListBg(context),
              Container(
                padding: EdgeInsets.all(0.0),
                margin: EdgeInsets.only(top: 90),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      bottomWidget(context),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ),
              ),
              customPositioned(context)
            ])),
      ),
    );
  }
}

Widget productListBg(context) {
  final double height = MediaQuery.of(context).size.height;
  return Container(
    height: height,
    margin: EdgeInsets.only(top: 100),
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),
    ),
  );
}
