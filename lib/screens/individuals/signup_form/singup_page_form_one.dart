import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/signup_form/singup_page_form_two.dart';
import 'package:pmc_dev/widgets/auth_bottom_content.dart';
import 'package:pmc_dev/widgets/custom_btn.dart';
import 'package:pmc_dev/widgets/custom_input.dart';
import 'package:pmc_dev/widgets/custom_wave.dart';

class SignUpFormOne extends StatefulWidget {
  SignUpFormOne({Key? key}) : super(key: key);

  @override
  _SignUpFormOneState createState() => _SignUpFormOneState();
}

class _SignUpFormOneState extends State<SignUpFormOne> {
  // For CircularProgressIndicator
  bool visible = false;

  // Getting value from textField Widget
  String emailText = "";
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();

  Future continueToNextScreen() async {
    String email = emailController.text;
    String fullName = fullNameController.text;
    String phoneNumber = phoneNumberController.text;

    final form = _formKey.currentState;
    form!.save();

    if (email != "" && fullName != "" && phoneNumber != "") {
      var data = {
        'full_names': fullName,
        'email': email,
        'phone_number': phoneNumber
      };

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SignUpFormTwo(userData: data)));
    } else {
      final snackBar = SnackBar(
        backgroundColor: Colors.deepOrange,
        content: Text('Make sure all input are not empty!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
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
                      Form(
                        key: _formKey,
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            children: [
                              formFieldRight(
                                  fullNameController,
                                  (val) => val.isNotEmpty
                                      ? null
                                      : "Full name must not remain empty!",
                                  "Enter full name",
                                  Icons.person),
                              SizedBox(
                                height: 20,
                              ),
                              formFieldLeft(
                                  phoneNumberController,
                                  (val) => val.isNotEmpty
                                      ? null
                                      : "Phone number must not remain empty!",
                                  "Phone number",
                                  Icons.phone_android),
                              SizedBox(
                                height: 20,
                              ),
                              formFieldLeft(
                                  emailController,
                                  (val) => val.isNotEmpty
                                      ? null
                                      : "Email must not remain empty!",
                                  "Your Email",
                                  Icons.person),
                              SizedBox(
                                height: 40,
                              ),
                              continueBtn(
                                  context, visible, continueToNextScreen)
                            ],
                          ),
                        ),
                      ),
                      "",
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
