import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_dev/screens/individuals/payment/approve_order_page.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget bottomItemBox(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                roundedDots(),
                SizedBox(width: 20),
                Text(
                  "Direct Payment",
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: pmcWhite30, borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: paymentInput(context)),
              SizedBox(
                width: 5,
              ),
              payBtn(context)
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                roundedDots(),
                SizedBox(width: 20),
                Text(
                  "Installments Payments",
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        gridButton(context)
      ],
    ),
  );
}

// Rounded dots

Widget roundedDots() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white54,
      shape: BoxShape.circle,
    ),
    height: 15,
    width: 15,
  );
}

// Payment Input

Widget paymentInput(context) {
  return Container(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.black38,
          ),
          child: TextFormField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                hintText: '3500,000 Rwf',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                )),
          )));
}

// Pay button

Widget payBtn(context) {
  return Container(
    decoration: BoxDecoration(
        color: pmcCyan900, borderRadius: BorderRadius.circular(12)),
    child: TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ApproveOrderPage()));
      },
      child: Text(
        "Pay",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
// Grid Button

Widget gridButton(context) {
  return Container(
      child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text("1 Month"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Payment is the transfer of money or goods and services.")
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text("3 Months"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Payment is the transfer of money or goods and services.")
                ],
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text("5 Months"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Payment is the transfer of money or goods and services.")
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text("9 Months"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Payment is the transfer of money or goods and services.")
                ],
              ),
            ),
          )
        ],
      ),
    ],
  ));
}
