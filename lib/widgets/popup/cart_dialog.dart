import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
// import 'package:commingle_app/widgets/share/style.dart';

Widget cartDialog() {
  return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.black,
      insetPadding: EdgeInsets.all(20.0),
      contentPadding: EdgeInsets.all(0.0),
      titlePadding: EdgeInsets.all(0.0),
      content: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(14.0),
                child: Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: pmcWhite30,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart_outlined,
                              color: Colors.white54),
                          Text(
                            "Individual",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: pmcWhite30,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart_outlined,
                              color: Colors.white54),
                          Text(
                            "Family Cart",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                        child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "New collective cart",
                        style: TextStyle(color: Colors.white54, fontSize: 11),
                      ),
                    )),
                    Flexible(
                        child: Container(
                            padding: EdgeInsets.all(0.0),
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: pmcCyan,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: TextButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.double_arrow_outlined,
                                  color: Colors.white54,
                                ))))
                  ],
                ),
              )
            ],
          ),
        ),
      ));
}
