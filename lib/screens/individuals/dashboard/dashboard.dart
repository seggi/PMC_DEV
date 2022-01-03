import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: Container(
          height: height,
          color: Colors.black26,
          child: SingleChildScrollView(
              child: Stack(
            children: [
              mainWidget(),
              Positioned(
                top: 50,
                left: 20,
                right: 20,
                child: Center(
                  child: Container(
                    width: 400,
                    padding: EdgeInsets.only(
                        left: 20, right: 10, top: 40, bottom: 40),
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12),
                          topLeft: Radius.circular(12),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Allowed Loan",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "1,500,000 Rwf",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black54,
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black54,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30,
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white54,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 30,
            ),
            IconButton(
              icon: Icon(
                Icons.window,
                color: Colors.white54,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 80,
            ),
            IconButton(
              icon: Icon(
                Icons.messenger_outline,
                color: Colors.white54,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 30,
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.white54,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget mainWidget() {
    return Container(

        // padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 8),

        decoration: BoxDecoration(
            // color: Color,
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        )),
        child: Column(children: [dashboardBox()]));
  }

  Widget rotateBox(boxColor, boxIcon) {
    return Transform.rotate(
      angle: 4,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Transform.rotate(
          angle: 2.3,
          child: Icon(
            boxIcon,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }

  Widget dashboardBox() {
    return Container(
        margin: EdgeInsets.only(
          top: 80,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            )),
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 120),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              left: 8, right: 8, top: 4, bottom: 4),
                          // margin: EdgeInsets.only(left: 40, right: 40),
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                              )),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "All",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              left: 8, right: 8, top: 4, bottom: 4),
                          // margin: EdgeInsets.only(left: 40, right: 40),
                          decoration: BoxDecoration(
                              // color: Colors.teal,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                              ),
                              border: Border.all(color: Colors.cyan)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "My Profile",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              left: 8, right: 8, top: 4, bottom: 4),
                          // margin: EdgeInsets.only(left: 40, right: 40),
                          decoration: BoxDecoration(
                              // color: Colors.cyan,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                              ),
                              border: Border.all(color: Colors.cyan)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Reports",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              left: 8, right: 8, top: 4, bottom: 4),
                          // margin: EdgeInsets.only(left: 40, right: 40),
                          decoration: BoxDecoration(
                              // color: Colors.cyan,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                              ),
                              border: Border.all(color: Colors.cyan)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Claim",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              )))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                chartBox(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Products",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            "View all",
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.cyan,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(padding: EdgeInsets.all(20), child: productBox())
              ],
            ),
          ),
        ));
  }

  Widget chartBox() {
    return Container(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.cyan[900],
                    padding: EdgeInsets.all(8),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("All Products",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("50000Rwf",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.cyan,
                        size: 30,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.yellow[900],
                    padding: EdgeInsets.all(8),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("All Services Const",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("3 000,000Rwf",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.yellow[900],
                        size: 30,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget productBox() {
    return Container(
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
          articleDetails(
              "https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg",
              "DELL",
              "Check website for latest pricing and availability"),
          SizedBox(
            height: 2,
          ),
          articleDetails(
              "https://assets.swappie.com/iPhone-11-Pro-space-gray-back.png",
              "Iphone",
              "Check website for latest pricing and availability"),
          SizedBox(
            height: 2,
          ),
          articleDetails(
              "https://www.tradedepot.co.nz/media/catalog/product/3/5/353584_new_lr.jpg",
              "Iphone",
              "Check website for latest pricing and availability"),
        ],
      ),
    );
  }

  Widget articleDetails(imageUrls, titleDesc, tedtDetails) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          singleImage(imageUrls),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 120,
                  child: Text(
                    titleDesc,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FittedBox(
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  child: Container(
                    width: 120,
                    child: Text(tedtDetails,
                        maxLines: 2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
              // width: 80,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget singleImage(imageUrls) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(12),
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
        image:
            DecorationImage(image: NetworkImage(imageUrls), fit: BoxFit.fill),
      ),
    );
  }
}
