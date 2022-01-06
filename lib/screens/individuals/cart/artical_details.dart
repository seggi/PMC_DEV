import 'package:flutter/material.dart';

Widget articleDetails(imageUrls, titleDesc, tedtDetails, titleW) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
        color: Colors.white24, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        singleImage(imageUrls),
        SizedBox(
          width: 20,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                child: Text(
                  titleDesc,
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FittedBox(
                alignment: Alignment.center,
                fit: BoxFit.contain,
                child: Container(
                  width: 120,
                  child: Text(titleW,
                      maxLines: 2,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.do_disturb_on_sharp,
                      color: Colors.teal,
                      size: 11,
                    ),
                    Text("Pedding",
                        maxLines: 2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              FittedBox(
                alignment: Alignment.center,
                fit: BoxFit.contain,
                child: Container(
                  width: 120,
                  child: Text(tedtDetails,
                      maxLines: 2,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
            width: 80,
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                Icon(
                  Icons.remove_circle_outline,
                  color: Colors.white30,
                ),
                Text(
                  "1",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white54),
                ),
                Icon(
                  Icons.add_circle_rounded,
                  color: Colors.white54,
                ),
              ],
            )),
      ],
    ),
  );
}

Widget singleImage(imageUrls) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(12),
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
      image: DecorationImage(image: NetworkImage(imageUrls), fit: BoxFit.fill),
    ),
  );
}
