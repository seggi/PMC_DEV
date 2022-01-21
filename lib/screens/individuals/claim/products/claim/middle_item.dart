import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/claim/products/claim/stepper.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget middleItems() {
  return Row(
    children: [
      Flexible(
        child: Column(
          children: [...stepper],
        ),
      ),
      SizedBox(
        width: 10,
      ),
      leftItem(),
    ],
  );
}

Widget leftItem() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Upload a product image",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
      SizedBox(
        height: 20,
      ),
      Container(
        width: 280,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: pmcWhite30, borderRadius: BorderRadius.circular(12)),
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upload image",
                style: TextStyle(color: Colors.white54),
              ),
              Icon(
                Icons.upload,
                color: pmcCyan,
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text("Chat with us",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
    ],
  );
}

Widget msgItem() {
  return Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: pmcWhite30,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: pmcBlack54,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                child: CircleAvatar(
                  maxRadius: 20,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Sanlom Insurance",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            width: 200,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: pmcWhite30,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                // bottomLeft: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                  "A Flutter widget for chat like a speech bubble in Whatsapp and others."),
            )),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("08:12 AM"),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          decoration: BoxDecoration(
            color: pmcBlack54,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            autocorrect: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.send),
              hintText: "Type a message here",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
