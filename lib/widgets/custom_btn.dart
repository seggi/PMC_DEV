import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/auth/loginpage_form.dart';
import 'package:pmc_dev/screens/individuals/start_page.dart';

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
              MaterialPageRoute(builder: (context) => LoginPageForm()));
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

Widget signInBtn(context, btnText, btnColor, btnTextColor) {
  return Container(
    width: 400,
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.white12)),
    child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => StartPage()));
        },
        child: Column(
          children: [
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

Widget continueBtn(context, visible, fn) {
  return TextButton(
      onPressed: fn,
      child: Container(
        width: 400,
        padding: EdgeInsets.only(top: 16, bottom: 16),
        decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.white12)),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            visible == false
                ? Text("Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.white,
                    ))
                : Visibility(
                    child: Container(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2.0,
                    ),
                  ))
          ],
        ),
      ));
}
