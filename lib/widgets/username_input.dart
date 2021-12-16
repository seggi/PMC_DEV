import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget usernameFormField() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white24,
    ),
    child: TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: 'Username',
          suffixIcon: Icon(Icons.email, color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )),
    ),
  );
}
