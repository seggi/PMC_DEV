import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

import '../product_widget.dart';

Widget optionItems(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 20,
          ),
          rotateBox(pmcTeal, Icons.tv),
          rotateBox(pmcWhite24, Icons.phone_android),
          rotateBox(pmcWhite24, Icons.queue_music_rounded),
          rotateBox(pmcWhite24, Icons.phone_android),
          rotateBox(pmcWhite24, Icons.phone_android),
          rotateBox(pmcWhite24, Icons.phone_android),
        ],
      ),
    ),
  );
}

// Search Box
Widget seachBox() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: pmcWhite24,
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
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Go",
              style: TextStyle(
                  color: pmcBlack87, fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    ),
  );
}

// Products list horizontal
Widget productRowList() {
  return Container(
    padding: EdgeInsets.all(20.0),
    child: Column(
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
            "Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history and around the world, it has been an important part of many cultures' diet"),
      ],
    ),
  );
}

// All category
Widget categoryItem(context) {
  return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Container(
                height: 180,
                child: productImageButton(context,
                    'https://cdn.anscommerce.com/catalog/brandstore/johnson/17_7_20/Sale.jpg'),
              ),
            ),
            Flexible(
              child: Container(
                child: productImageButton(context,
                    'https://www.thespruceeats.com/thmb/abx-C65PX-C9s04dCqzzV_QIr9o=/3931x2948/smart/filters:no_upscale()/super-easy-bread-for-beginners-428108-hero-01-a3c09d713f9e4055977a72c391d353c9.jpg'),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Container(
                // width: 180,
                child: productImageButton(context,
                    'https://image.made-in-china.com/202f0j00EMGRPDpgsbqJ/Wholesale-Used-Mobile-Phone-Cellphone-for-iPhone-11-11PRO-Max-64GB-32GB-128GB-256GB-New-Unlocked-Original.jpg'),
              ),
            ),
            Flexible(
              child: Container(
                // width: 180,
                height: 200,
                child: productImageButton(context,
                    'https://kphv.cz/wp-content/uploads/1246280_16061017110043391702.jpg'),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Container(
                width: 180,
                height: 200,
                child: productImageButton(context,
                    'https://www.afrikmag.com/wp-content/uploads/2020/05/canalplus.jpg'),
              ),
            ),
            Flexible(
              child: Container(
                width: 180,
                height: 150,
                child: productImageButton(context,
                    'https://i.dawn.com/primary/2018/10/5bcbe259cef7c.jpg'),
              ),
            ),
          ],
        )
      ]));
}
