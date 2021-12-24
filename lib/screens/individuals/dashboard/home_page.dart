import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: height,
        color: Colors.black,
        child: SingleChildScrollView(
            child: Stack(
          children: [mainWidget(), Positioned(child: customBottomBar())],
        )),
      ),
    ));
  }

  Widget mainWidget() {
    var math;
    return Container(
      padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu_open_outlined,
                    color: Colors.white70,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Products",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white70,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://googleflutter.com/sample_image.jpg'),
                          fit: BoxFit.fill),
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        rotateBox(Colors.teal, Icons.tv),
                        SizedBox(
                          width: 35,
                        ),
                        rotateBox(Colors.white24, Icons.phone_android),
                        SizedBox(
                          width: 35,
                        ),
                        rotateBox(Colors.white24, Icons.queue_music_rounded),
                        SizedBox(
                          width: 35,
                        ),
                        rotateBox(Colors.white24, Icons.phone_android),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                new Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "Search any product",
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Go",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          articalBox(),
          SizedBox(
            height: 20,
          ),
          productDisplay(),
          SizedBox(
            height: 20,
          ),
          populArticalBox(),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              articleDetails(
                  "https://ae01.alicdn.com/kf/Ha8163ad4dd124f73b418f390179a1febE/Basketball-Shoes-Men-Sports-Shoes-High-Tops-Mens-Basketball-Sneakers-Athletics-Basket-Shoes-Outdoor-Men-Sneakers.jpg",
                  "Men basket",
                  "Check website for latest pricing and availability"),
              SizedBox(
                height: 10,
              ),
              articleDetails(
                  "https://www.onceuponachef.com/images/2009/09/Pumpkin-Bread-100-760x621.jpg",
                  "Bread",
                  "Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history and around the world, it has been an important part of many cultures' diet")
            ],
          )
        ],
      ),
    );
  }

  Widget articalBox() {
    return Container(
      child: Row(
        children: [
          Text(
            "Products",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "flequently bought items",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 10,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Widget productDisplay() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            productImageButton(
                'https://m.media-amazon.com/images/I/61KMsxswCRL._UX569_.jpg'),
            SizedBox(
              width: 10,
            ),
            productImageButton(
                'https://i.pinimg.com/736x/00/fe/e7/00fee757785ee5df41d889588d903e58.jpg'),
            SizedBox(
              width: 10,
            ),
            productImageButton(
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
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "clothing",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 10,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Widget customBottomBar() {
    return Container(
      child: Text("FFFF"),
    );
  }
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

Widget productImageButton(imageUrls) {
  return TextButton(
    onPressed: () {},
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
      children: [
        singleImage(imageUrls),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 150,
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                titleDesc,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(tedtDetails,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text("40.00",
            style: TextStyle(
                color: Colors.teal, fontSize: 18, fontWeight: FontWeight.w600))
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
