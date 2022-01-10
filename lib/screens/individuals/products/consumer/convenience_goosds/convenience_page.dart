import 'package:flutter/material.dart';

import 'custom_positioned.dart';

class ConveniencePage extends StatefulWidget {
  ConveniencePage({Key? key}) : super(key: key);

  @override
  _ConveniencePageState createState() => _ConveniencePageState();
}

class _ConveniencePageState extends State<ConveniencePage> {
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
        child: SafeArea(
            child: Scaffold(
      body: Container(
        child: Stack(children: [
          Container(
            height: height,
            margin: EdgeInsets.only(top: 250),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 500,
                    // child: bottomItemBox(context),
                  ),
                  Container(
                    height: 60,
                  )
                ],
              ),
            ),
          ),
          customPositioned(context)
        ]),
      ),
    )));
  }
}
