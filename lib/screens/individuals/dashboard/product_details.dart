import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key? key, required this.imageBox}) : super(key: key);
  final imageBox;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final imageBox = widget.imageBox;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [Icon(Icons.library_add_check_sharp)],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              productImageButton(imageBox),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              otherProductImageButton(context,
                                  "https://i.pinimg.com/originals/89/07/3b/89073b12d94348698a494813f7fd65dd.jpg"),
                              otherProductImageButton(context,
                                  "https://image.made-in-china.com/202f0j00aiUYRWNlJscV/Hot-Sale-Men-Jacket-Cheap-Winter-Zipper-PU-Leather-Jacket-Men.jpg"),
                              otherProductImageButton(context,
                                  "https://www.dhresource.com/0x0/f2/albu/g9/M00/6A/97/rBVaVV3nD5aAX0pCAADpqufpTB8319.jpg/hot-sale-mens-jackets-winter-brand-mens-coat.jpg"),
                              otherProductImageButton(context,
                                  "https://ae01.alicdn.com/kf/HTB1FNX1SpXXXXXZXXXXq6xXFXXXs/Hot-Sale-Spring-Autumn-New-Fashion-Brand-Men-Jacket-Coats-Thin-Overcoat-Cotton-Jackets-Mens-Outerwear.jpg"),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height / 2,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Italian Suit",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    "Rwf 40.00",
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                child: Text(
                                  "Discover our extensive range of Coats & Jackets Sale online at House of Fraser. Shop online or in-store for some of the UK's favourite products.",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Quantity",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                    Text("Subtotal",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ]),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Row(
                                  children: [
                                    rectagleBox(Colors.white24, "1"),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    rectagleBox(Colors.white24, "2"),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    rectagleBox(Colors.white24, "3"),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    rotateBox(Colors.white24, "...")
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ]),
          ),
        ),
      ),
    );
  }

  Widget productImageButton(imageUrls) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image:
              DecorationImage(image: NetworkImage(imageUrls), fit: BoxFit.fill),
        ),
      ),
    );
  }
}

Widget otherProductImageButton(context, imageUrls) {
  return TextButton(
    onPressed: () {},
    child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(18),
        image:
            DecorationImage(image: NetworkImage(imageUrls), fit: BoxFit.fill),
      ),
    ),
  );
}

Widget rotateBox(boxColor, boxText) {
  return Transform.rotate(
    angle: 4,
    child: Container(
      width: 40,
      height: 40,
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
          child: Text(
            boxText,
            style: TextStyle(
                color: Colors.white54,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          )),
    ),
  );
}

Widget rectagleBox(boxColor, boxText) {
  return Transform.rotate(
    angle: 0,
    child: Container(
      width: 40,
      height: 40,
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
          child: Text(
            boxText,
            style: TextStyle(
                color: Colors.white54,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          )),
    ),
  );
}
