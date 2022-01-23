import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/custom_colors/colors.dart';
// import 'package:commingle_app/widgets/share/style.dart';

Widget optCodeDialog() {
  return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.black,
      insetPadding: EdgeInsets.all(20.0),
      contentPadding: EdgeInsets.all(0.0),
      titlePadding: EdgeInsets.all(0.0),
      content: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(14.0),
                child: Center(
                  child: Text(
                    'Enter OTP code you have received',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      width: 30,
                      child: TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: "*",
                            border: UnderlineInputBorder(),
                            fillColor: Colors.transparent,
                            filled: true),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 30,
                      child: TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: "*",
                            border: UnderlineInputBorder(),
                            fillColor: Colors.transparent,
                            filled: true),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 30,
                      child: TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: "*",
                            border: UnderlineInputBorder(),
                            fillColor: Colors.transparent,
                            filled: true),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 30,
                      child: TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: "*",
                            border: UnderlineInputBorder(),
                            fillColor: Colors.transparent,
                            filled: true),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 30,
                      child: TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: "*",
                            border: UnderlineInputBorder(),
                            fillColor: Colors.transparent,
                            filled: true),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 30,
                      child: TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: "*",
                            border: UnderlineInputBorder(),
                            fillColor: Colors.transparent,
                            filled: true),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                        child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Didn't get code?",
                        style: TextStyle(color: Colors.white54, fontSize: 11),
                      ),
                    )),
                    Flexible(
                        child: Container(
                      padding: EdgeInsets.all(0.0),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: pmcCyan,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resend Code",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ));
}
