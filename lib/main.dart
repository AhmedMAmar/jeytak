import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jeytak/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jeytak/screens/auth/login.dart';
import 'package:jeytak/screens/home_page.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  } on Exception catch (e) {
    print(e);
  }
  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeytak',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}
