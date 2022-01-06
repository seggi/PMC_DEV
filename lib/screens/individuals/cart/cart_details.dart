import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/cart/artical_details.dart';

class CartDetails extends StatefulWidget {
  CartDetails({Key? key}) : super(key: key);

  @override
  _CartDetailsState createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white54,
        body: Container(
            child: SafeArea(
                child: Stack(children: [
          Container(
            child: SingleChildScrollView(
              child: Container(
                width: width,
                height: height,
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
                      Column(
                        children: [
                          articleDetails(
                              "https://ae01.alicdn.com/kf/Ha8163ad4dd124f73b418f390179a1febE/Basketball-Shoes-Men-Sports-Shoes-High-Tops-Mens-Basketball-Sneakers-Athletics-Basket-Shoes-Outdoor-Men-Sneakers.jpg",
                              "Men basket",
                              "Rwf1,200,000",
                              "Reebok Pump"),
                          SizedBox(
                            height: 10,
                          ),
                          articleDetails(
                              "https://www.onceuponachef.com/images/2009/09/Pumpkin-Bread-100-760x621.jpg",
                              "Bread",
                              "Rwf 700,000",
                              "Sliced bread"),
                          SizedBox(
                            height: 10,
                          ),
                          articleDetails(
                              "https://api.time.com/wp-content/uploads/2016/04/hp-spectre-13-3_aerial-view.jpg",
                              "Computer",
                              "Rwf700,000",
                              "Hp Elitebook")
                        ],
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
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
          ))
        ]))));
  }
}
