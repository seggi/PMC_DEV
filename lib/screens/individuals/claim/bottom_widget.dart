import 'package:flutter/material.dart';
// import 'package:pmc_dev/screens/individuals/claim/insuarance%20claim/insuarance_claim_page.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';

Widget bottomWidget(context) {
  return Container(
    child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "Hello Jean Paul",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Text(
            "Find black old man stock images in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection",
            style: TextStyle(
                color: pmcWhite54, fontWeight: FontWeight.w600, fontSize: 11),
          ),
        ),
        gridItemBox(context),
        SizedBox(
          height: 30,
        ),
        numberBox(),
        bottomItem(context)
      ],
    ),
  );
}

Widget gridItemBox(context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: optionBtn(context, "Insurance claim",
                Icons.accessible_forward_outlined, () {}),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
              child: optionBtn(
                  context, "Bank claim", Icons.account_balance, () {})),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: optionBtn(
                context, "Service claim", Icons.bookmarks_outlined, () {}),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
              child: optionBtn(
                  context, "Product claim", Icons.card_giftcard_sharp, () {})),
        ],
      ),
    ],
  );
}

Widget optionBtn(context, textBtn, iconBtn, fn) {
  return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: pmcWhite30,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12)),
      child: TextButton(
        onPressed: fn,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconBtn,
              size: 40,
              color: pmcWhite70,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              textBtn,
              style: TextStyle(fontSize: 14, color: pmcWhite70),
            )
          ],
        ),
      ));
}

Widget numberBox() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          decoration: BoxDecoration(
            color: pmcWhite30,
            borderRadius: BorderRadius.only(
              // bottomRight: Radius.circular(12),
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
              // bottomLeft: Radius.circular(12),
            ),
          ),
          child: Text(
            "1",
            style: TextStyle(
                fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "2",
          style: TextStyle(
              fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "3",
          style: TextStyle(
              fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "4",
          style: TextStyle(
              fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "5",
          style: TextStyle(
              fontSize: 18, color: pmcWhite70, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

Widget bottomItem(context) {
  final double width = MediaQuery.of(context).size.width;
  return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      decoration: BoxDecoration(
        // color: pmcWhite30,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              width: width,
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Text("Next Step",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ));
}
