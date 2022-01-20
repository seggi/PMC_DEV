import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/products/consumer/convenience_goods/convenience_page.dart';
import 'package:pmc_dev/screens/individuals/products/consumer/convenience_goods/liquor_page.dart';
import 'package:pmc_dev/screens/individuals/products/consumer/convenience_goods/phone/phone_goods_page.dart';
import 'package:pmc_dev/screens/individuals/products/consumer/drinks/boxed_drinks_page.dart';
import 'package:pmc_dev/screens/individuals/products/services/car/car_services_page.dart';
import 'package:pmc_dev/screens/individuals/products/services/electricity/electricity_page.dart';
import 'package:pmc_dev/screens/individuals/products/services/saloon/saloon_page.dart';
import 'package:pmc_dev/screens/individuals/products/services/waste/waste_page.dart';
import 'package:pmc_dev/screens/individuals/products/services/water/water_page.dart';
// import 'package:pmc_dev/screens/individuals/products/product_details.dart';
// import 'package:pmc_dev/screens/individuals/products/product_widget.dart';
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
            // Flexible(
            // child: Container(
            //     height: 180,
            //     child: productImageButton(
            //         context,
            //         'https://cdn.anscommerce.com/catalog/brandstore/johnson/17_7_20/Sale.jpg',
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => ProductDetails(
            //                       imageBox: "",
            //                     )))
            //         )),
            // ),

            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConveniencePage(
                                pgImg:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSegrZzWOWFcaX12TxKy9xqgpXwE42JenTy2A&usqp=CAU',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSegrZzWOWFcaX12TxKy9xqgpXwE42JenTy2A&usqp=CAU"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),

            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LiquorPage(
                                pgImg:
                                    'https://produits.bienmanger.com/35274-0w600h600_Grand_Marnier_Liquor_Cordon_Rouge.jpg',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://produits.bienmanger.com/35274-0w600h600_Grand_Marnier_Liquor_Cordon_Rouge.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
          ],
        ),

        // Second Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CarServicePage(
                                pgImg:
                                    'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5d35eacaf1176b0008974b54%2F0x0.jpg%3FcropX1%3D790%26cropX2%3D5350%26cropY1%3D784%26cropY2%3D3349',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5d35eacaf1176b0008974b54%2F0x0.jpg%3FcropX1%3D790%26cropX2%3D5350%26cropY1%3D784%26cropY2%3D3349"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WaterServicePage(
                                pgImg:
                                    'https://www.prominent.ca/media/Applications/app-water-treatment-and-disinfection_Header_1.jpg',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.prominent.ca/media/Applications/app-water-treatment-and-disinfection_Header_1.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
          ],
        ),
        // here is third row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhoneGoodsPage(
                                pgImg:
                                    'https://www.apple.com/newsroom/images/product/availability/Apple_iphone12mini-iphone12max-homepodmini-availability_iphone12promax-us_110520_inline.jpg.large.jpg',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.apple.com/newsroom/images/product/availability/Apple_iphone12mini-iphone12max-homepodmini-availability_iphone12promax-us_110520_inline.jpg.large.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BoxedDrinksPage(
                                pgImg:
                                    'https://store2door.rw/wp-content/uploads/2020/04/1L_TETRAPAK_Mango.jpg',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://store2door.rw/wp-content/uploads/2020/04/1L_TETRAPAK_Mango.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
          ],
        ),
        // row number five
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SaloonPage(
                                pgImg:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCu-E9PFi3SdrMPjYMBCC5R1aHTyHmAfoEXg&usqp=CAU',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.harrods.com/BWStaticContent/50000/55a29f8d-bcf8-4b5d-841c-86048df254c0_d-services-hair-beauty-salon-2021-gallery-portrait-2.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WastePage(
                                pgImg:
                                    'https://www.gabonreview.com/wp-content/uploads/2021/08/canal-box.jpg',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg0ohonT97MbPJdiYmVb6ABgKOFVDJ9_coLfjARFqqlBQB5w_R-l2endK5jDcUnqXYn_I&usqp=CAU"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ElectricityServicePage(
                                pgImg:
                                    'https://www.thoughtco.com/thmb/NjWNoDg8rEZ4KVQMUq3xwp3G6tU=/735x0/lightbulblit-57a5bf6b5f9b58974aee831e.jpg',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.thoughtco.com/thmb/NjWNoDg8rEZ4KVQMUq3xwp3G6tU=/735x0/lightbulblit-57a5bf6b5f9b58974aee831e.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WastePage(
                                pgImg:
                                    'https://www.newsstrategies.com/wp-content/uploads/2019/03/images2543-5c814381bb9d5-1024x684.jpg',
                              )));
                },
                child: Container(
                  width: 200,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.newsstrategies.com/wp-content/uploads/2019/03/images2543-5c814381bb9d5-1024x684.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]));
}
