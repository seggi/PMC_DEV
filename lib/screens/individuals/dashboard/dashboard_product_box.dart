import 'package:flutter/material.dart';

// MY PRODUCTS
//
Widget chartBox() {
  return Container(
    padding: EdgeInsets.all(20),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.cyan[900],
                  padding: EdgeInsets.all(8),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("All Products",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("50000Rwf",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.cyan,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.yellow[900],
                  padding: EdgeInsets.all(8),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("All Services Const",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("3000,000Rwf",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.yellow[900],
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

// All product box which come on bottom
Widget productBox() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white24,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(12),
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
    ),
    child: Column(
      children: [
        articleDetails(
            "https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg",
            "DELL",
            "Check website for latest pricing and availability"),
        Divider(
          color: Colors.white12,
          thickness: 1,
        ),
        articleDetails(
            "https://assets.swappie.com/iPhone-11-Pro-space-gray-back.png",
            "Iphone",
            "Check website for latest pricing and availability"),
        Divider(
          color: Colors.white12,
          thickness: 1,
        ),
        articleDetails(
            "https://www.tradedepot.co.nz/media/catalog/product/3/5/353584_new_lr.jpg",
            "Iphone",
            "Check website for latest pricing and availability"),
      ],
    ),
  );
}

Widget articleDetails(imageUrls, titleDesc, tedtDetails) {
  return Container(
    padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        singleImage(imageUrls),
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
        Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.cyan,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.double_arrow_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            )),
      ],
    ),
  );
}

Widget singleImage(imageUrls) {
  return Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.white12,
      shape: BoxShape.circle,
      image: DecorationImage(image: NetworkImage(imageUrls), fit: BoxFit.fill),
    ),
  );
}

// NEW OFFERS

Widget newOffersBox() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white24,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(12),
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
    ),
    child: Column(
      children: [
        newOfferTile("10", "Mon",
            "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, Mac,"),
        Divider(
          color: Colors.white12,
          thickness: 1,
        ),
        newOfferTile("08", "Tue",
            "A computer is a machine that can be programmed to carry out sequences of arithmetic or logical operations automatically. Modern computers can perform"),
        Divider(
          color: Colors.white12,
          thickness: 1,
        ),
        newOfferTile("06", "Wed",
            "Google's official phone calling app is now available to download for the first time. Phone helps you easily connect with family and friends"),
      ],
    ),
  );
}

Widget newOfferTile(digit, day, tedtDetails) {
  return Container(
    padding: EdgeInsets.all(24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            children: [
              Text(
                digit,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              Text(day,
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Flexible(
            child: Text(tedtDetails,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                    fontWeight: FontWeight.w600)))
      ],
    ),
  );
}

// MY SERVICES

Widget servicesBox() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white24,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(12),
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
    ),
    child: Column(
      children: [
        articleDetails(
            "https://stimg.cardekho.com/images/carexteriorimages/630x420/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
            "Motor Insurance",
            "Lamborghini Urus Price in India, Images, Review & Colours"),
        Divider(
          color: Colors.white12,
          thickness: 1,
        ),
        articleDetails(
            "https://www.techinafrica.com/wp-content/uploads/2021/01/212804_-_high_res_pic-scaled-1.jpg",
            "DSTV",
            "DStv introduces a new way to discover content with the HD Decoder"),
        Divider(
          color: Colors.white12,
          thickness: 1,
        ),
        articleDetails(
            "https://carsguide-res.cloudinary.com/image/upload/f_auto%2Cfl_lossy%2Cq_auto%2Ct_default/v1/editorial/story/hero_image/1908-Ford-Model-T_0.jpg",
            "Motor Maintenance",
            "Check website for latest pricing and availability"),
      ],
    ),
  );
}
