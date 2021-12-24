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
                    child:
                        Image(image: AssetImage("assets/images/older_man.jpg")),
                  )
                ],
              ),
            ],
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.tv,
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.phone_iphone_rounded,
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.phone_iphone_rounded,
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.phone_iphone_rounded,
                          color: Colors.white70,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                TextFormField(
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
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Go"),
                  ),
                )
              ],
            ),
          ),
          articalBox(),
          productDisplay(),
          populArticalBox()
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
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 5,
          ),
          Text("flequently bought items")
        ],
      ),
    );
  }

  Widget productDisplay() {
    return Container(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 80,
              height: 120,
              child: Image(image: AssetImage("assets/images/older_man.jpg")),
            ),
            Container(
              width: 80,
              height: 120,
              child: Image(image: AssetImage("assets/images/older_man.jpg")),
            )
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
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 5,
          ),
          Text("clothing")
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
