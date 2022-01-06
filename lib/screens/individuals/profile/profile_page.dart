import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/profile/profile_bottom.dart';
import 'package:pmc_dev/screens/individuals/profile/profile_top.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: SafeArea(
            child: Stack(children: [
          Container(
              color: Colors.black,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      // Image Box
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(32),
                              bottomLeft: Radius.circular(32),
                            )),
                        child: Column(
                          children: [imageProfile(), profileId()],
                        ),
                      ),

                      Container(
                        child: Column(
                          children: [
                            Divider(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 32, right: 32),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Bank Details",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.more_vert,
                                            color: Colors.white30,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                customProfileTile(
                                    'https://play-lh.googleusercontent.com/jnzg6fM-5gconn3DzMyVms2Qh_JSK5h4JmuXLQne2lANU2akYUhvRzZkTBoWlxd90A',
                                    "Cogebanque",
                                    "0004-0123-4598"),
                                customProfileTileOther(
                                    Icons.account_balance_wallet,
                                    "Monthly Deduction",
                                    "250,000Rwf"),
                                customProfileTileOther(
                                    Icons.account_balance_wallet,
                                    "Salary",
                                    "700,000Rwf"),
                              ],
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 32, right: 32, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Personal Details",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Divider(
                                  height: 10,
                                ),
                                customProfileTileOther(Icons.wallet_travel,
                                    "Job Title", "Marketing Manager"),
                                customProfileTileOther(Icons.account_balance,
                                    "Salary", "Bank of Kigali"),
                              ],
                            ),
                            Divider(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              child: Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Container(
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
                ),
                Container(
                  child: Container(
                      margin: EdgeInsets.all(20),
                      width: 50,
                      height: 40,
                      child: IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          Icons.filter_list,
                          size: 28,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ))
        ])),
      ),
    );
  }
}
