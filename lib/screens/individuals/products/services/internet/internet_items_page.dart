import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/products/services/internet/internet_bottom_items.dart';
import '../custom_positioned.dart';

class InternetItemsPage extends StatefulWidget {
  InternetItemsPage({Key? key, required this.pgImg}) : super(key: key);
  final pgImg;
  @override
  _InternetItemsPageState createState() => _InternetItemsPageState();
}

class _InternetItemsPageState extends State<InternetItemsPage> {
  final serviceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final pgImg = widget.pgImg;
    final double height = MediaQuery.of(context).size.height;
    return Container(
        child: SafeArea(
            child: Scaffold(
      body: Container(
        child: Stack(children: [
          Container(
            height: height,
            margin: EdgeInsets.only(top: 80),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  productImageButton(pgImg),
                  Container(
                    child: internetBottomItemBox1(
                        context, pgImg, serviceController),
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

  Widget productImageButton(imageUrls) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image:
              DecorationImage(image: NetworkImage(imageUrls), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
