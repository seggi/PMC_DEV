import 'package:flutter/material.dart';
import 'package:pmc_dev/widgets/auth_bottom_content.dart';
import 'package:pmc_dev/widgets/custom_wave.dart';

class SignUpFormThree extends StatefulWidget {
  SignUpFormThree({Key? key}) : super(key: key);

  @override
  _SignUpFormThreeState createState() => _SignUpFormThreeState();
}

class _SignUpFormThreeState extends State<SignUpFormThree> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Container(
              child: Stack(
                children: [
                  authBottomContents(context, "Sign Up",
                      mainSignUpInputFormContentOne(context)),
                  Positioned(
                    child: ClipPath(
                      clipper: WaveClipperBox(),
                      child: Container(
                        color: Colors.white12,
                        width: double.infinity,
                        height: 420.0,
                        child: Stack(
                          children: [
                            firstCircle(),
                            secondScreen(),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget firstCircle() {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      margin: EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(180),
          topRight: Radius.circular(180),
          topLeft: Radius.circular(180),
          bottomLeft: Radius.circular(180),
        ),
      ),
    );
  }

  Widget secondScreen() {
    return Positioned(
        bottom: 40,
        top: 40,
        left: 40,
        right: 40,
        child: Container(
          margin: EdgeInsets.only(bottom: 85),
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
        ));
  }
}
