import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
import 'bottom_widget.dart';
import 'custom_positioned.dart';

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
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(top: 90),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      bottomWidget(context),
                      SizedBox(
                        height: 100,
                        width: 300,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    margin: EdgeInsets.only(top: 180),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Your name",
                          fillColor: pmcBlack87,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 100),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10.0))))),
                      obscureText: false,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 230),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Your address",
                          fillColor: pmcBlack87,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 100),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10.0))))),
                      obscureText: false,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 280),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Your phone",
                          fillColor: pmcBlack87,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 100),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10.0))))),
                      obscureText: false,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 330),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Your email",
                          fillColor: pmcBlack87,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 100),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10.0))))),
                      obscureText: false,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 380),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Insuarance type",
                          fillColor: pmcBlack87,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 100),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10.0))))),
                      obscureText: false,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 420),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Insuarance provider",
                          fillColor: pmcBlack87,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 100),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10.0))))),
                      obscureText: false,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 470),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "describe your claim",
                          fillColor: pmcWhite24,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 100),
                              borderRadius:
                                  BorderRadius.all((Radius.circular(10.0))))),
                      obscureText: false,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    ),
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
    margin: EdgeInsets.only(top: 120),
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),
    ),
  );
}
