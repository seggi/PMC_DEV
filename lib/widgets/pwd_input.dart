import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PwdInputField extends StatefulWidget {
  PwdInputField({Key? key}) : super(key: key);

  @override
  _PwdInputFieldState createState() => _PwdInputFieldState();
}

class _PwdInputFieldState extends State<PwdInputField> {
  bool _passwordVisibility = false;

  get sufixIcon => null;

  @override
  void initState() {
    setState(() {
      _passwordVisibility = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white24,
        ),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: _passwordVisibility,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Container(
                  child: Icon(
                    Icons.vpn_key,
                    color: Colors.white,
                  ),
                ),
                suffixIcon: IconButton(
                    onPressed: () {
                      // Get password visibility bool var
                      setState(() {
                        _passwordVisibility = !_passwordVisibility;
                      });
                    },
                    icon: Icon(
                        !_passwordVisibility
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white)),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
