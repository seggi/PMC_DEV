import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget emailFormField(inputController, valFn) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: Colors.white24,
    ),
    child: TextFormField(
      controller: inputController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: 'Enter email',
          suffixIcon: Icon(Icons.email, color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true),
      validator: valFn,
    ),
  );
}

// Sign up input fill

Widget formFieldLeft(inputController, valFn, textHint, iconInput) {
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white24,
      ),
      child: TextFormField(
        controller: inputController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: textHint,
            suffixIcon: Icon(iconInput, color: Colors.white),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true),
        validator: valFn,
      ));
}

Widget formFieldRight(inputController, valFn, textHint, iconInput) {
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white24,
      ),
      child: TextFormField(
        controller: inputController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: textHint,
            prefixIcon: Icon(iconInput, color: Colors.white),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true),
        validator: valFn,
      ));
}

Widget signUpPhoneFormField(inputController, valFn) {
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white24,
      ),
      child: TextFormField(
        controller: inputController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: 'Phone number',
            prefixIcon: Icon(Icons.phone_android, color: Colors.white),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true),
        validator: valFn,
      ));
}
