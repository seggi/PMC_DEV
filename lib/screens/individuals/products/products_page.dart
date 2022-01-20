import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/products/bottom_widget.dart';
import 'package:pmc_dev/screens/individuals/products/consumer/drinks/boxed_widget.dart';

import 'widgets/custom_positioned.dart';
import 'widgets/notification_number.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
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
                padding: EdgeInsets.all(0.0),
                margin: EdgeInsets.only(top: 90),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      bottomWidget(context),
                      SizedBox(
                        height: 60,
                      ),
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
