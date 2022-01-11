import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jeytak/screens/auth/home.dart';
import 'package:jeytak/screens/super_page.dart';
//import 'package:jeytak_3/screens/login.dart';

class AuthService {
  //Sign In
  signIn(String email, String password, context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((val) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SuperPage()));
    }).catchError((e) {
      print(e);
    });
  }

  //fb signin

  //Signup a new user
  signUp(String email, String password, context) {
    return FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SuperPage()));
    }).catchError((e) {
      print(e);
    });
  }

  //Reset Password
  resetPasswordLink(String email) {
    FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
