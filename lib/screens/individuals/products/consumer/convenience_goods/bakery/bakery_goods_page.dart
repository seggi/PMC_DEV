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
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 30),
            child: Icon(
              Icons.favorite_border,
              color: Colors.teal,
            ),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              productImageButton(imageBox),
              Container(
                  width: MediaQuery.of(context).size.width,
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
                          // height: MediaQuery.of(context).size.height,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    "Rwf 40.00",
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 18,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        rectagleBox(
                                          Colors.white24,
                                          "1",
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        rectagleBox(Colors.white24, "2"),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        rectagleBox(Colors.white24, "3"),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        rotateBox(Colors.white24, "...")
                                      ],
                                    ),
                                    Flexible(
                                      child: Text("Rwf 300,000",
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800)),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Flexible(
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.black54,
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border:
                                              Border.all(color: Colors.teal)),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.storage_outlined,
                                              color: Colors.teal,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Pay Directly",
                                                style: TextStyle(
                                                    color: Colors.teal,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w800))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Container(
                                      // width: 200,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.teal,
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border:
                                              Border.all(color: Colors.teal)),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Text("choose installment",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w800)),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
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
      padding: EdgeInsets.only(top: 8, bottom: 8),
      alignment: Alignment.center,
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
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          boxText,
          style: TextStyle(
              color: Colors.white54, fontSize: 18, fontWeight: FontWeight.w600),
        )),
  );
}
