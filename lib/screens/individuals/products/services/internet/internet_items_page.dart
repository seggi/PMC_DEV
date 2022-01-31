import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/products/services/gas/gas_bottom_items.dart';
import '../custom_positioned.dart';

class InternetItemsPage extends StatefulWidget {
  InternetItemsPage({Key? key, required this.pgImg}) : super(key: key);
  final pgImg;
  @override
  _InternetItemsPageState createState() => _InternetItemsPageState();
}

class _InternetItemsPageState extends State<InternetItemsPage> {
  final serviceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final pgImg = widget.pgImg;
    final double height = MediaQuery.of(context).size.height;
    return Container(
        child: SafeArea(
            child: Scaffold(
      body: Container(
        child: Stack(children: [
          Container(
            height: height,
            margin: EdgeInsets.only(top: 80),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  productImageButton(pgImg),
                  Container(
                    child: gasBottomItemBox1(context, pgImg, serviceController),
                  ),
                  Container(
                    height: 60,
                  )
                ],
              ),
            ),
          ),
          customPositioned(context)
        ]),
      ),
    )));
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

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Container(
              alignment: Alignment.bottomLeft,
              child: Text("Cylinder Capacity")),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.all(Colors.red),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                          Text("7.5kg");
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.all(Colors.blue),
                      value: isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked1 = value!;
                          Text("15kg");
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
