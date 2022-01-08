import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/claim/claim_page.dart';
import 'package:pmc_dev/screens/individuals/dashboard/dashboard_product_box.dart';
import 'package:pmc_dev/screens/individuals/profile/profile_page.dart';
import 'package:pmc_dev/screens/individuals/reports/report_page.dart';

class DashBoardPage extends StatefulWidget {
  DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      )),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // width: 400,
                          padding: EdgeInsets.only(
                              left: 20, right: 10, top: 40, bottom: 40),

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
                        Container(
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.monetization_on_rounded,
                              color: Colors.green[900],
                              size: 100,
                            ))
                      ]),
                ),
              )
            ],
          )),
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
          margin: EdgeInsets.only(top: 120, bottom: 150),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: 80,
                            height: 35,
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
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ))),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  topLeft: Radius.circular(24),
                                ),
                                border: Border.all(color: Colors.cyan)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage()));
                                },
                                child: Text(
                                  "My Profile",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ))),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  topLeft: Radius.circular(24),
                                ),
                                border: Border.all(color: Colors.cyan)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ReportPage()));
                                },
                                child: Text(
                                  "Reports",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ))),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  topLeft: Radius.circular(24),
                                ),
                                border: Border.all(color: Colors.cyan)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ClaimPage()));
                                },
                                child: Text(
                                  "Claim",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                )))
                      ],
                    ),
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
                  padding: EdgeInsets.only(left: 20, right: 20),
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
                Container(padding: EdgeInsets.all(20), child: productBox()),
                Divider(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Offers",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(padding: EdgeInsets.all(20), child: newOffersBox()),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Services",
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
                Container(padding: EdgeInsets.all(20), child: servicesBox()),
              ],
            ),
          ),
        ));
  }
}
