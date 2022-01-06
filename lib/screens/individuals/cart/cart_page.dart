import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pmc_dev/screens/individuals/cart/artical_details.dart';
import 'package:pmc_dev/screens/individuals/cart/subtotal.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white54,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                child: Stack(children: [
              Container(
                height: height,
                color: Colors.white10,
                child: SingleChildScrollView(
                  child: Container(
                    width: width,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          itemList(),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            child: Column(
                              children: [
                                subTotalBox(),
                                Divider(
                                  color: Colors.white12,
                                  thickness: 1,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20, bottom: 20),
                                  child: subTotalTile("Total", "2,715,000"),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                      "Individual Cart",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        margin: EdgeInsets.all(20),
                        width: 50,
                        height: 40,
                        child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(
                            Icons.more_vert,
                            size: 28,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              )),
              Positioned(
                bottom: 0,
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        child: Text("Pay Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                ),
              )
            ]))),
      ),
    );
  }
}
