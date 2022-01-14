import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget bottomWidget(context) {
  return Container(
    child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "Please Fill Here Your Claim Details!l",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          // child: Text(
          //   "Please fill here your claim details!",
          //   style: TextStyle(
          //       color: pmcWhite54, fontWeight: FontWeight.w600, fontSize: 11),
          // ),
        ),
        // gridItemBox(context),
        SizedBox(
          height: 30,
        ),
        // TextField(
        //   decoration: InputDecoration(
        //       hintText: "Your name",
        //       fillColor: pmcBlack87,
        //       labelText: "Name",
        //       labelStyle: TextStyle(
        //         fontSize: 25,
        //         color: Colors.green,

        // ),
        numberBox(),
        SizedBox(
          height: 30,
        ),
        bottomItem(context)
      ],
    ),
  );
}

Widget numberBox() {
  return Container(
    margin: EdgeInsets.only(bottom: 300),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          decoration: BoxDecoration(
            color: pmcWhite30,
            borderRadius: BorderRadius.only(
              // bottomRight: Radius.circular(12),
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
              // bottomLeft: Radius.circular(12),
            ),
          ),
          //   child: Text(
          //     "1",
          //     style: TextStyle(
          //         fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
          //   ),
          // ),
          // SizedBox(
          //   width: 5,
          // ),
          // Text(
          //   "2",
          //   style: TextStyle(
          //       fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
          // ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    ),
  );
}

Widget bottomItem(context) {
  final double width = MediaQuery.of(context).size.width;
  return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      decoration: BoxDecoration(
        // color: pmcWhite30,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              width: width,
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Text("Next Step",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ));
}
