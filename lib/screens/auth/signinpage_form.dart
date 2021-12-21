import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/pwd_input.dart';
import 'package:pmc_dev/widgets/signin_btn.dart';
import 'package:pmc_dev/widgets/title.dart';
import 'package:pmc_dev/widgets/custom_input.dart';

class SignInPageForm extends StatefulWidget {
  SignInPageForm({Key? key}) : super(key: key);

  @override
  _SignInPageFormState createState() => _SignInPageFormState();
}

class _SignInPageFormState extends State<SignInPageForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white24,
          child: SingleChildScrollView(
            child: Container(
              child: Column(children: [
                Container(
                  child: Column(
                    children: [topContent(), bottomContent()],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget topContent() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black,
      child: Container(
          height: height / 2.2,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
            ),
          ),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                      width: width,
                      height: 300,
                      decoration: BoxDecoration(
                        // color: Colors.white12,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(110),
                          topRight: Radius.circular(120),
                          topLeft: Radius.circular(120),
                          bottomLeft: Radius.circular(120),
                        ),
                      ),
                      child: circleWiget())),
            ],
          )),
    );
  }

  Widget bottomContent() {
    final height = MediaQuery.of(context).size.height;
    final IconData btnIcon = Icons.emoji_people_outlined;
    final IconData btnIcon1 = Icons.account_balance;
    final Color btnColor = Colors.black12;
    final Color btnColor1 = Colors.white12;
    final Color btnTextColor = Colors.white60;
    return Container(
      color: Colors.teal,
      child: Container(
        height: height / 1.2,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(120),
          ),
        ),
        child: Column(
          children: [
            Container(
              color: Colors.white24,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                    ),
                    border: Border.all(color: Colors.black)),
                padding: EdgeInsets.only(top: 55, bottom: 55),
                alignment: Alignment.bottomCenter,
                child: Text("Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                        color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  // usernameFormField(),
                  SizedBox(height: 20),
                  PwdInputField(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget password?",
                          style: TextStyle(color: Colors.white54),
                        )),
                  ),
                  SizedBox(height: 30),
                  signinBtn(context, "Sign In", btnColor, Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 0, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't you have an account yet?",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "sign up",
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
