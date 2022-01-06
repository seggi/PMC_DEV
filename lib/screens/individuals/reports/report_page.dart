import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/reports/main_widget.dart';
import 'package:pmc_dev/screens/individuals/reports/products_list.dart';

class ReportPage extends StatefulWidget {
  ReportPage({Key? key}) : super(key: key);

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
        color: Colors.white54,
        child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Container(
                    child: SafeArea(
                        child: Stack(children: [
                  productListBg(context),
                  Container(
                      color: Colors.black54,
                      height: height,
                      child: SingleChildScrollView(
                          child: Container(child: mainWiget(context)))),
                  Positioned(
                      child: Container(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.teal,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                topLeft: Radius.circular(8),
                              ),
                            ),
                            margin: EdgeInsets.all(20),
                            width: 50,
                            height: 40,
                            child: IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: Icon(
                                Icons.west_outlined,
                                size: 28,
                                color: Colors.white,
                              ),
                            )),
                        Text(
                          "Product Report",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Container(
                            // decoration: BoxDecoration(
                            //   shape: BoxShape.circle,
                            //   color: Colors.white54,
                            // ),
                            margin: EdgeInsets.all(20),
                            width: 50,
                            height: 40,
                            child: IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: Icon(
                                Icons.shopping_cart_rounded,
                                size: 28,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),
                  )),
                ]))))));
  }
}
