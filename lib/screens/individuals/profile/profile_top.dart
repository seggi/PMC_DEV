import 'package:flutter/material.dart';

Widget imageProfile() {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(32),
          bottomLeft: Radius.circular(32),
        )),
    child: Stack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 60, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://image.shutterstock.com/image-photo/puduchery-india-december-circa-2018-260nw-1320939845.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
                Divider(),
                Text(
                  "Kamali Jean",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Divider(
                  height: 5,
                ),
                Text(
                  "kamali@gmail.com",
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: 50,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                )),
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    ]),
  );
}

Widget profileId() {
  return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 5,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text('ID',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  Divider(
                    height: 5,
                  ),
                  Text('#24037',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 2,
            child: Container(
              color: Colors.white30,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text('Tel',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  Divider(
                    height: 5,
                  ),
                  Text('078356780',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 2,
            child: Container(
              color: Colors.white30,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text('Bank',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  Divider(
                    height: 5,
                  ),
                  Text('Cogebanque',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ));
}
