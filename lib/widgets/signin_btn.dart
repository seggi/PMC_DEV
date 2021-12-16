import 'package:flutter/material.dart';

Widget signinBtn(context, title, btnColor, textColor) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.only(top: 2.0, bottom: 2.0),
    decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.teal)),
    child: TextButton(
      child: Text(
        title,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.w600, fontSize: 18.0),
      ),
      onPressed: () {
        if (title == "Login") {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => HomePage()));
        } else if (title == "Sign up") {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => SignUpPage()));
        } else if (title == "next") {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }
      },
    ),
  );
}
