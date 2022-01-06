import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/cart/cart_page.dart';
import 'package:pmc_dev/screens/individuals/products/product_widget.dart';

Widget mainWidget(context) {
  var math;
  return Container(
    padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 8),
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
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white70,
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
        productDisplay(context),
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
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            alignment: Alignment.bottomLeft,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: Text(
                    "All item Categories.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      child: productImageButton(context,
                          'https://cdn.anscommerce.com/catalog/brandstore/johnson/17_7_20/Sale.jpg'),
                    ),
                    Container(
                      width: 180,
                      child: productImageButton(context,
                          'https://www.thespruceeats.com/thmb/abx-C65PX-C9s04dCqzzV_QIr9o=/3931x2948/smart/filters:no_upscale()/super-easy-bread-for-beginners-428108-hero-01-a3c09d713f9e4055977a72c391d353c9.jpg'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 180,
                      child: productImageButton(context,
                          'https://image.made-in-china.com/202f0j00EMGRPDpgsbqJ/Wholesale-Used-Mobile-Phone-Cellphone-for-iPhone-11-11PRO-Max-64GB-32GB-128GB-256GB-New-Unlocked-Original.jpg'),
                    ),
                    Container(
                      width: 180,
                      height: 200,
                      child: productImageButton(context,
                          'https://kphv.cz/wp-content/uploads/1246280_16061017110043391702.jpg'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 180,
                      height: 200,
                      child: productImageButton(context,
                          'https://www.afrikmag.com/wp-content/uploads/2020/05/canalplus.jpg'),
                    ),
                    Container(
                      width: 180,
                      height: 150,
                      child: productImageButton(context,
                          'https://i.dawn.com/primary/2018/10/5bcbe259cef7c.jpg'),
                    ),
                  ],
                )
              ],
            )),
        SizedBox(
          height: 20,
        ),
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
              color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "flequently bought items",
          style: TextStyle(
              color: Colors.white70, fontSize: 10, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}
