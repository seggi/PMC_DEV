import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

Widget articleDetails(imageUrls, titleDesc, tedtDetails, titleW) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
        color: Colors.white24, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        singleImage(imageUrls),
        SizedBox(
          width: 20,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                child: Text(
                  titleDesc,
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FittedBox(
                alignment: Alignment.center,
                fit: BoxFit.contain,
                child: Container(
                  width: 120,
                  child: Text(titleW,
                      maxLines: 2,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.do_disturb_on_sharp,
                      color: Colors.teal,
                      size: 14,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text("Pedding",
                        maxLines: 2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Rwf",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w800)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(tedtDetails,
                      maxLines: 2,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
            width: 80,
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                Icon(
                  Icons.remove_circle_outline,
                  color: Colors.white30,
                ),
                Text(
                  "1",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white54),
                ),
                Icon(
                  Icons.add_circle_rounded,
                  color: Colors.white54,
                ),
              ],
            )),
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

// Slidable

Widget customCard(imageUrls, titleDesc, tedtDetails, titleW) {
  return Slidable(
    actionPane: SlidableDrawerActionPane(),
    actionExtentRatio: 0.25,
    child: Container(
        child: articleDetails(imageUrls, titleDesc, tedtDetails, titleW)),
    actions: <Widget>[
      IconSlideAction(
        caption: 'Archive',
        color: Colors.blue,
        icon: Icons.archive,
        // onTap: () => _showSnackBar('Archive'),
      ),
      IconSlideAction(
        caption: 'Share',
        color: Colors.indigo,
        icon: Icons.share,
        // onTap: () => _showSnackBar('Share'),
      ),
    ],
    secondaryActions: <Widget>[
      IconSlideAction(
        caption: 'More',
        color: Colors.black45,
        icon: Icons.more_horiz,
        // onTap: () => _showSnackBar('More'),
      ),
      IconSlideAction(
        caption: 'Delete',
        color: Colors.red,
        icon: Icons.delete,
        // onTap: () => _showSnackBar('Delete'),
      ),
    ],
  );
}

Widget itemList() {
  return Container(
    child: Column(children: [
      customCard(
          "https://ae01.alicdn.com/kf/Ha8163ad4dd124f73b418f390179a1febE/Basketball-Shoes-Men-Sports-Shoes-High-Tops-Mens-Basketball-Sneakers-Athletics-Basket-Shoes-Outdoor-Men-Sneakers.jpg",
          "Men basket",
          "1,200,000",
          "Reebok Pump"),
      Divider(
        height: 10,
      ),
      customCard(
          "https://www.onceuponachef.com/images/2009/09/Pumpkin-Bread-100-760x621.jpg",
          "Bread",
          "700,000",
          "Sliced bread"),
      Divider(
        height: 10,
      ),
      customCard(
          "https://api.time.com/wp-content/uploads/2016/04/hp-spectre-13-3_aerial-view.jpg",
          "Computer",
          "700,000",
          "Hp Elitebook"),
    ]),
  );
}
