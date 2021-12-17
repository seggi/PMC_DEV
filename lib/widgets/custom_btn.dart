import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/auth/signinpage_form.dart';

Widget customBtn(context, btnIcon, btnText, btnColor, btnTextColor) {
  return Container(
    width: 120,
    height: 110,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.white30)),
    child: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignInPageForm()));
        },
        child: Column(
          children: [
            Icon(
              btnIcon,
              size: 48,
              color: Colors.white60,
            ),
            SizedBox(
              height: 5,
            ),
            Text(btnText,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: btnTextColor,
                ))
          ],
        )),
  );
}

Widget customBtn1(btnIcon, btnText, btnColor, btnTextColor) {
  return Container(
    width: 120,
    height: 110,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.white12)),
    child: TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Icon(
              btnIcon,
              size: 48,
              color: Colors.white60,
            ),
            SizedBox(
              height: 5,
            ),
            Text(btnText,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: btnTextColor,
                ))
          ],
        )),
  );
}
