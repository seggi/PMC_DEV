import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  ProfileDetails({Key? key}) : super(key: key);

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white54,
        body: Container(
          child: SafeArea(
            child: SingleChildScrollView(
                child: Stack(children: [
              Container(
                  color: Colors.black87,
                  child: Container(
                    child: Column(
                      children: [
                        // Image Box
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                              )),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 200,
                                  margin: EdgeInsets.only(top: 60, left: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://image.shutterstock.com/image-photo/puduchery-india-december-circa-2018-260nw-1320939845.jpg"),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      Divider(),
                                      Text(
                                        "Kamali Jean",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Divider(),
                                      Text(
                                        "kamali@gmail.com",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  width: 50,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                        topLeft: Radius.circular(12),
                                      )),
                                  child: Column(
                                    children: [],
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),

                        Container(
                          width: width,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              // color: Colors.black87,
                              borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                          )),
                          child: Text(
                            "DDDD",
                          ),
                        )
                      ],
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
                              Icons.arrow_back_rounded,
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
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(
                              Icons.menu_sharp,
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
        ));
  }
}
