import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/products/main_widget.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            height: height,
            color: Colors.black,
            child: SingleChildScrollView(
                child: Stack(
              children: [
                mainWidget(context),
              ],
            )),
          ),
        ));
  }
}
