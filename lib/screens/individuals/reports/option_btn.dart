import 'package:flutter/material.dart';

Widget optionBtn() {
  return Container(
    margin: EdgeInsets.only(top: 80),
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.center,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration:
                BoxDecoration(color: Colors.white30, shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white54,
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              width: 90,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  border: Border.all(color: Colors.cyan)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Insurance",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ))),
          SizedBox(
            width: 5,
          ),
          Container(
              width: 90,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  )),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Products",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ))),
          SizedBox(
            width: 5,
          ),
          Container(
              width: 90,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  border: Border.all(color: Colors.cyan)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Services",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ))),
        ],
      ),
    ),
  );
}
