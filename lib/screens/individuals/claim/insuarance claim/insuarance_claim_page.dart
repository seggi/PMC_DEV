import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/claim/insuarance%20claim/bottom_widget.dart';
import 'package:pmc_dev/screens/individuals/products/widgets/custom_positioned.dart';

class InsuaranceClaimPage extends StatelessWidget {
  InsuaranceClaimPage({Key? key}) : super(key: key);

  @override
  _InsuaranceClaimPageState createState() => _InsuaranceClaimPageState();
  Widget build(BuildContext context) {
    return Container();
  }
}

@override
class _InsuaranceClaimPageState extends State<InsuaranceClaimPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
            height: height,
            child: Stack(children: [
              // productListBg(context),
              Container(
                padding: EdgeInsets.all(0.0),
                margin: EdgeInsets.only(top: 90),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      productListBg(context),
                      bottomWidget(context),
                      SizedBox(
                        height: 60,
                      )
                    ],
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
    margin: EdgeInsets.only(top: 100),
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),
    ),
  );
}
