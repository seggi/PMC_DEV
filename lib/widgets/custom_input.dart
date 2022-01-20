import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget emailFormField(inputController, valFn) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: Colors.white24,
    ),
    child: TextFormField(
      autocorrect: true,
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

Widget formFieldRight(inputController, valFn, textHint, iconInput) {
  return Container(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            // color: Colors.white24,
            color: Colors.cyan,
          ),
          child: Row(children: [
            Flexible(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black,
                  ),
                  child: Container(
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true),
                        validator: valFn,
                      ))),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(iconInput),
            ),
          ])));
}

Widget formFieldLeft(inputController, valFn, textHint, iconInput) {
  return Container(
    child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          // color: Colors.white24,
          color: Colors.cyan,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(iconInput),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.black,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white24,
                  ),
                  child: TextFormField(
                    controller: inputController,
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: textHint,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true),
                    validator: valFn,
                  ),
                ),
              ),
            )
          ],
        )),
  );
}

Widget signUpPhoneFormField(inputController, valFn) {
  return Container(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            // color: Colors.white24,
            color: Colors.cyan,
          ),
          child: Row(children: [
            Flexible(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black,
                    ),
                    child: Container(
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true),
                        validator: valFn,
                      ),
                    ))),
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.phone_android, color: Colors.white),
            ),
          ])));
}

Widget formField(textHint) {
  return Container(
    child: TextFormField(
      autocorrect: true,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: textHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true),
    ),
  );
}

Widget formFieldMultLine(textHint) {
  return Container(
    child: TextFormField(
      maxLines: 8,
      autocorrect: true,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: textHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true),
    ),
  );
}

Widget formFieldRightTest(textHint, iconInput) {
  return Container(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            // color: Colors.white24,
            color: Colors.cyan,
          ),
          child: Row(children: [
            Flexible(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black,
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white24,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: textHint,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true),
                      ))),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(iconInput),
            ),
          ])));
}

Widget formFieldLeftTest(textHint, iconInput) {
  return Container(
    child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          // color: Colors.white24,
          color: Colors.cyan,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(iconInput),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.black,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white24,
                  ),
                  child: TextFormField(
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: textHint,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true),
                  ),
                ),
              ),
            )
          ],
        )),
  );
}
