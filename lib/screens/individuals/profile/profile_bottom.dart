import 'package:flutter/material.dart';

Widget customProfileTile(iconImg, titleTxt, subTitleTxt) {
  return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Card(
        color: Colors.white10,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black54,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(iconImg), fit: BoxFit.fill),
              ),
            ),
            foregroundColor: Colors.white,
          ),
          title: Text(titleTxt,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text(subTitleTxt,
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
          trailing: TextButton(
            onPressed: () {},
            child: Column(
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white54,
                  size: 18,
                ),
                Text('Edit',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 12,
                        fontWeight: FontWeight.w600))
              ],
            ),
          ),
        ),
      ));
}

Widget customProfileTileOther(iconImag, titleTxt, subTitleTxt) {
  return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Card(
        color: Colors.white10,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconImag,
                color: Colors.white54,
              ),
            ),
            foregroundColor: Colors.white,
          ),
          title: Text(titleTxt,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text(subTitleTxt,
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
          trailing: TextButton(
            onPressed: () {},
            child: Column(
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white54,
                  size: 18,
                ),
                Text('Edit',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 12,
                        fontWeight: FontWeight.w600))
              ],
            ),
          ),
        ),
      ));
}
