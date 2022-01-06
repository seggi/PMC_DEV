import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/dashboard/product_details.dart';

Widget productDisplay(context) {
  return Container(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          productImageButton(context,
              'https://m.media-amazon.com/images/I/61KMsxswCRL._UX569_.jpg'),
          SizedBox(
            width: 10,
          ),
          productImageButton(context,
              'https://i.pinimg.com/736x/00/fe/e7/00fee757785ee5df41d889588d903e58.jpg'),
          SizedBox(
            width: 10,
          ),
          productImageButton(context,
              'https://m.media-amazon.com/images/I/71vmyxuI92L._AC_UL1500_.jpg'),
        ],
      ),
    ),
  );
}

Widget populArticalBox() {
  return Container(
    child: Row(
      children: [
        Text(
          "Popular",
          style: TextStyle(
              color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "clothing",
          style: TextStyle(
              color: Colors.white70, fontSize: 10, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}

Widget rotateBox(boxColor, boxIcon) {
  return Transform.rotate(
    angle: 4,
    child: Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(12),
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Transform.rotate(
        angle: 2.3,
        child: Icon(
          boxIcon,
          color: Colors.white70,
        ),
      ),
    ),
  );
}

Widget productImageButton(context, imageUrls) {
  return TextButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetails(
                    imageBox: imageUrls,
                  )));
    },
    child: Container(
      width: 180,
      height: 250,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(18),
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
          bottomLeft: Radius.circular(18),
        ),
        image:
            DecorationImage(image: NetworkImage(imageUrls), fit: BoxFit.fill),
      ),
    ),
  );
}

Widget articleDetails(imageUrls, titleDesc, tedtDetails) {
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
            children: [
              Container(
                width: 120,
                child: Text(
                  titleDesc,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
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
                          color: Colors.white70,
                          fontSize: 11,
                          fontWeight: FontWeight.w600)),
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
          child: Text("40,000",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
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
