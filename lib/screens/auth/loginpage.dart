import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pmc_dev/widgets/custom_btn.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        height: height / 1.5,
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
                customBtn(btnIcon, "Individual", btnColor, btnTextColor),
                SizedBox(width: 20),
                customBtn1(btnIcon1, "Company", btnColor1, btnTextColor),
              ],
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

  Widget circleWiget() {
    return Center(
      child: Stack(
        children: [
          Positioned(
              child: Container(
            width: 270,
            height: 270,
            decoration: BoxDecoration(
              color: Colors.white10,
              shape: BoxShape.circle,
              // border: Border.all(color: Colors.black)
            ),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "P",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24),
                ),
                Text(
                  ")",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24),
                ),
                Text(
                  ")",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                ),
                Text(
                  "PayingTone",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
              ],
            )),
          ))
        ],
      ),
    );
  }
}
