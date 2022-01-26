import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_dev/screens/individuals/cart/cart_page.dart';
import 'package:pmc_dev/screens/individuals/payment/approve_order_page.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
import 'package:pmc_dev/widgets/popup/cart_comfirmation_dialog.dart';

Widget PayDirectlyConfirmItemBox(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Read this message carefully before you add to cart.",
            style:
                TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Raleway'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        const Text(
          '1.By confirming this request you agree to be purchase this product at a sum of a subtotal of 11400.00 RWF..',
          style:
              TextStyle(fontWeight: FontWeight.normal, fontFamily: 'Raleway'),
        ),
        SizedBox(
          height: 20,
        ),
        const Text(
          '2.Due to 1 time being the number of times you want to get the product in a month the cost of the product will be 11400.00 RWF.',
          style:
              TextStyle(fontWeight: FontWeight.normal, fontFamily: 'Raleway'),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          // margin: EdgeInsets.all(0.2),
          alignment: Alignment.centerLeft,
          child: const Text(
            '3.Do you need this product to be delivered to your doorstep?',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: 'Raleway',
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(4.0),
          margin: EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(5.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  "Yes, I need delivery",
                  style: TextStyle(color: pmcWhite24, fontSize: 14),
                ),
              )),
              Flexible(
                  child: Container(
                      padding: EdgeInsets.all(0.0),
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          color: pmcCyan,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.crop_square,
                            color: Colors.white54,
                          ))))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        const Text(
          '4.A deliver fee of 1000 Rwf will be applied to your subtotal resulting in a total cost of 12400.00 RWF for this product..',
          style:
              TextStyle(fontWeight: FontWeight.normal, fontFamily: 'Raleway'),
        ),
        SizedBox(
          height: 20,
        ),
        const Text(
          '5.A total amount of 12400.00 RWF will be directly reducted from your account once you have proceeded to submitting and processing the order.',
          style:
              TextStyle(fontWeight: FontWeight.normal, fontFamily: 'Raleway'),
        ),
        SizedBox(
          height: 20,
        ),
        Text('Optional: To which wallet do we bill you on this product?'),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(4.0),
          margin: EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(5.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  "No Wallets Found.",
                  style: TextStyle(color: pmcWhite24, fontSize: 14),
                ),
              )),
              Flexible(
                  child: Container(
                      padding: EdgeInsets.all(0.0),
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          color: pmcCyan,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.wallet_travel,
                            color: Colors.white54,
                          ))))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text('NB: In case no wallet is select the bill will go to your bank'),
        SizedBox(
          height: 40,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  color: pmcCyan,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.teal)),
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        cartComfirmationDialog(context),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.red.shade100)),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.cancel_sharp,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Decline",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
