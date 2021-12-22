import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/singup_page_form_five.dart';
import 'package:pmc_dev/screens/individuals/singup_page_form_four.dart';
import 'package:pmc_dev/screens/individuals/singup_page_form_one.dart';
import 'package:pmc_dev/screens/individuals/singup_page_form_three.dart';
import 'package:pmc_dev/screens/individuals/singup_page_form_two.dart';
import 'package:pmc_dev/widgets/custom_btn.dart';
import 'package:pmc_dev/widgets/custom_input.dart';
import 'package:pmc_dev/widgets/pwd_input.dart';

Widget authBottomContents(context, scrTitleText, mainContent) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;
  return Container(
      color: Colors.black,
      height: height,
      child: Column(
        children: [
          Container(
            width: width,
            height: height / 2,
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(scrTitleText,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    scrTitleText == "Sign In"
                        ? SizedBox(
                            width: 1,
                          )
                        : topBottomText("Personal information"),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                )),
          ),
          buttonContent(context, width, height, mainContent)
        ],
      ));
}

// Use this widget at the bottom of Sign up or Sign In Text
Widget topBottomText(wText) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      samllCircle(),
      SizedBox(
        width: 5,
      ),
      Text(wText,
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 12,
              color: Colors.white54)),
      SizedBox(
        width: 5,
      ),
      samllCircle()
    ],
  );
}

Widget samllCircle() {
  return Container(
    width: 10,
    height: 10,
    padding: EdgeInsets.all(1),
    decoration: BoxDecoration(
      color: Colors.teal,
      shape: BoxShape.circle,
      // border: Border.all(color: Colors.black)
    ),
    child: Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        // border: Border.all(color: Colors.black)
      ),
    ),
  );
}

Widget buttonContent(context, width, height, mainContent) {
  return Container(
    color: Colors.teal,
    width: width,
    height: height / 2,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(80),
          ),
          border: Border.all(color: Colors.black)),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(child: mainContent),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 0, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't you have an account yet?",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpFormOne()));
                        },
                        child: Text(
                          "sign up",
                          style: TextStyle(
                              color: Colors.teal, fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget mainButtonContent(context) {
  final IconData btnIcon = Icons.emoji_people_outlined;
  final IconData btnIcon1 = Icons.account_balance;
  final Color btnColor = Colors.black12;
  final Color btnColor1 = Colors.white12;
  final Color btnTextColor = Colors.white60;
  return Column(
    children: [
      Align(
        alignment: Alignment.bottomCenter,
        child: Text("What Best Describes You?",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white)),
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customBtn(context, btnIcon, "Individual", btnColor, btnTextColor),
          SizedBox(width: 20),
          customBtn1(btnIcon1, "Company", btnColor1, btnTextColor),
        ],
      ),
    ],
  );
}

Widget mainInputFormContent(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    child: Form(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emailFormField(),
            SizedBox(
              height: 20,
            ),
            PwdInputField(),
            SizedBox(
              height: 40,
            ),
            signInBtn("Sign In", Colors.teal, Colors.white)
          ],
        ),
      ),
    ),
  );
}

// All Sign up Form screens comes

Widget mainSignUpInputFormContent(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    child: Form(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formFieldLeft("Enter full name", Icons.person),
            SizedBox(
              height: 20,
            ),
            formFieldRight("Phone number", Icons.phone_android),
            SizedBox(
              height: 20,
            ),
            formFieldRight("Your email", Icons.email),
            SizedBox(
              height: 40,
            ),
            continueBtn("Continue", Colors.teal, Colors.white, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpFormTwo()));
            })
          ],
        ),
      ),
    ),
  );
}

Widget mainSignUpInputFormContentOne(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    child: Form(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formFieldLeft("Upload profile image", Icons.image),
            SizedBox(
              height: 20,
            ),
            formFieldRight("Enter full address", Icons.location_on),
            SizedBox(
              height: 20,
            ),
            formFieldRight("Select your gender", Icons.female),
            SizedBox(
              height: 40,
            ),
            continueBtn("Continue", Colors.teal, Colors.white, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpFormThree()));
            })
          ],
        ),
      ),
    ),
  );
}

Widget mainSignUpInputFormContentTwo(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    child: Form(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formFieldRight("Set password", Icons.vpn_key_sharp),
            SizedBox(
              height: 20,
            ),
            formFieldRight("Confirm password", Icons.vpn_key_sharp),
            SizedBox(
              height: 20,
            ),
            formFieldLeft("Enter OTP code", Icons.fingerprint),
            SizedBox(
              height: 40,
            ),
            continueBtn("Continue", Colors.teal, Colors.white, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpFormFour()));
            })
          ],
        ),
      ),
    ),
  );
}

Widget mainSignUpInputFormContentThree(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    child: Form(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formFieldRight("Place of employment", Icons.account_balance),
            SizedBox(
              height: 20,
            ),
            formFieldRight("Job title", Icons.work_rounded),
            SizedBox(
              height: 20,
            ),
            formFieldLeft("Monthly income", Icons.attach_money_rounded),
            SizedBox(
              height: 20,
            ),
            formFieldLeft("Contract end date(dd/mm/yy)", Icons.calendar_today),
            SizedBox(
              height: 40,
            ),
            continueBtn("Continue", Colors.teal, Colors.white, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpFormFive()));
            })
          ],
        ),
      ),
    ),
  );
}

Widget mainSignUpInputFormContentFour(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    child: Form(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formFieldRight("Place of employment", Icons.person),
            SizedBox(
              height: 20,
            ),
            formFieldRight("Employee address", Icons.location_on),
            SizedBox(
              height: 20,
            ),
            formFieldLeft("Employer tin number", Icons.menu_open_rounded),
            SizedBox(
              height: 20,
            ),
            formFieldLeft(
                "Employee point of contact", Icons.control_point_duplicate),
            SizedBox(
              height: 20,
            ),
            formFieldRight("length of contract", Icons.file_copy),
            SizedBox(
              height: 20,
            ),
            formFieldRight("Years of service", Icons.calendar_today),
            SizedBox(
              height: 40,
            ),
            continueBtn("Continue", Colors.teal, Colors.white, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpFormFive()));
            })
          ],
        ),
      ),
    ),
  );
}
