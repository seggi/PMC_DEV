import 'package:flutter/material.dart';
import 'package:pmc_dev/screens/individuals/signup_form/singup_page_form_three.dart';
import 'package:pmc_dev/widgets/auth_bottom_content.dart';
import 'package:pmc_dev/widgets/custom_btn.dart';
import 'package:pmc_dev/widgets/custom_input.dart';
import 'package:pmc_dev/widgets/custom_wave.dart';

class SignUpFormTwo extends StatefulWidget {
  SignUpFormTwo({Key? key, required this.userData}) : super(key: key);
  final Map<String, dynamic> userData;

  @override
  _SignUpFormTwoState createState() => _SignUpFormTwoState();
}

class _SignUpFormTwoState extends State<SignUpFormTwo> {
  // For CircularProgressIndicator
  bool visible = false;

  // Getting value from textField Widget
  String emailText = "";
  final _formKey = GlobalKey<FormState>();
  final uploadImageController = TextEditingController();
  final fullAddressController = TextEditingController();
  final selectGenderController = TextEditingController();

  Future continueToNextScreen() async {
    final userDataPrScr = widget.userData;

    String img = uploadImageController.text;
    String fullAddress = fullAddressController.text;
    String gender = selectGenderController.text;

    final form = _formKey.currentState;
    form!.save();

    if (img != "" && fullAddress != "" && gender != "") {
      var currentInputData = {
        'profile_picture': img,
        'address': fullAddress,
        'gender': gender
      };

      final newData = {...userDataPrScr, ...currentInputData};

      setState(() {
        visible = true;
      });
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SignUpFormThree(userData: newData)));
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
                      Form(
                        key: _formKey,
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            children: [
                              formFieldLeft(
                                  uploadImageController,
                                  (val) => val.isNotEmpty
                                      ? null
                                      : "Upload profile can not remain empty!",
                                  "Upload profile image",
                                  Icons.image),
                              SizedBox(
                                height: 20,
                              ),
                              formFieldRight(
                                  fullAddressController,
                                  (val) => val.isNotEmpty
                                      ? null
                                      : "Enter full can not remain empty!",
                                  "Enter full address",
                                  Icons.location_on),
                              SizedBox(
                                height: 20,
                              ),
                              formFieldRight(
                                  selectGenderController,
                                  (val) => val.isNotEmpty
                                      ? null
                                      : "Select your can not remain empty!",
                                  "Select your gender",
                                  Icons.female),
                              SizedBox(
                                height: 40,
                              ),
                              continueBtn(
                                  context, visible, continueToNextScreen)
                            ],
                          ),
                        ),
                      ),
                      "Personal information",
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
