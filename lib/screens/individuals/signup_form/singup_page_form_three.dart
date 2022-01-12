import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pmc_dev/screens/individuals/signup_form/singup_page_form_four.dart';
import 'package:pmc_dev/utils/api.dart';
import 'package:pmc_dev/widgets/auth_bottom_content.dart';
import 'package:pmc_dev/widgets/custom_btn.dart';
import 'package:pmc_dev/widgets/custom_input.dart';
import 'package:pmc_dev/widgets/custom_wave.dart';

class SignUpFormThree extends StatefulWidget {
  SignUpFormThree({Key? key, required this.userData}) : super(key: key);
  final Map<String, dynamic> userData;

  @override
  _SignUpFormThreeState createState() => _SignUpFormThreeState();
}

class _SignUpFormThreeState extends State<SignUpFormThree> {
  // For CircularProgressIndicator
  bool visible = false;

  // Getting value from textField Widget
  String emailText = "";
  final _formKey = GlobalKey<FormState>();
  final pwdController = TextEditingController();
  final reppeatPwdController = TextEditingController();

  Future submitUSer() async {
    final userDataPrScr = widget.userData;

    String pwd = pwdController.text;
    String reppeatPwd = reppeatPwdController.text;

    final form = _formKey.currentState;
    form!.save();

    if (pwd == reppeatPwd && pwd != "" && reppeatPwd != "") {
      var currentInputData = {'password': pwd};

      // final finalData = {...currentInputData, ...userDataPrScr};
      var url = "https://api.payingtone.com/api/v1/clients/register";

      var response = await Dio().post(url, data: {
        "full_names": "full_names should not be empty",
        "password": "password must",
        "profile_picture": "profile_picture should not be empty",
        "account_type": "account_type should not be empty",
        "gender": "gender should not be empty",
        "address": {
          "email": "ssss@gmail.com",
          "phone_number": "098754434",
          "street_address": "kifff",
          "city": "ddss",
          "province": "sdssd",
          "district": "string",
          "sector": "string",
          "cell": "string",
          "village": "string"
        }
      });

      print(response.data);
    }
    setState(() {
      visible = false;
    });
  }

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
                  authBottomContents(
                      context,
                      "Sign Up",
                      Container(
                        padding: EdgeInsets.all(25),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              formFieldRight(
                                  pwdController,
                                  (val) => val.isNotEmpty
                                      ? null
                                      : "Password can not remain empty!",
                                  "Set password",
                                  Icons.vpn_key_sharp),
                              SizedBox(
                                height: 20,
                              ),
                              formFieldRight(
                                  reppeatPwdController,
                                  (val) => val.isNotEmpty
                                      ? null
                                      : "Confirm password can not remain empty!",
                                  "Confirm password",
                                  Icons.vpn_key_sharp),
                              // SizedBox(
                              //   height: 20,
                              // ),
                              // formFieldLeft("Enter OTP code", Icons.fingerprint),
                              SizedBox(
                                height: 40,
                              ),
                              // continueBtn(
                              //   context,
                              //   () {
                              //     // Navigator.push(
                              //     //     context,
                              //     //     MaterialPageRoute(
                              //     //         builder: (context) =>
                              //     //             SignUpFormFour()));
                              //   },
                              // )
                              continueBtn(context, visible, submitUSer)
                            ],
                          ),
                        ),
                      ),
                      "Account security details",
                      "Sign In"),
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
