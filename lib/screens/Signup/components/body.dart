// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jeytak/Screens/Login/login_screen.dart';
import 'package:jeytak/Screens/Signup/components/background.dart';
import 'package:jeytak/Screens/Signup/components/or_divider.dart';
import 'package:jeytak/Screens/Signup/components/social_icon.dart';
import 'package:jeytak/components/already_have_an_account_acheck.dart';
import 'package:jeytak/components/rounded_button.dart';
import 'package:jeytak/components/rounded_input_field.dart';
import 'package:jeytak/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jeytak/screens/home_page.dart';

class Body extends StatelessWidget {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () async {
                await _firebaseAuth
                    .createUserWithEmailAndPassword(
                        email: email, password: password)
                    .then((value) => Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        })));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
