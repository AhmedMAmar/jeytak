// ignore_for_file: deprecated_member_use

import 'package:jeytak/widgets/cart_products.dart';
import 'package:jeytak/widgets/cart_total.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Votre Panier")),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(height: 500, child: CartProducts()),
                Container(child: CartTotal()),
                /*FlatButton(
                  // ignore: prefer_const_constructors
                  child: Text(
                    'Valider vos commendes',
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 20.0),
                  ),
                  color: Colors.orangeAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    _makePostRequest();
                  },
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*_makePostRequest() async {
    final url =
        Uri.parse('https://backend-server-flutter-app.herokuapp.com/orders/');
    final headers = {"Content-type": "application/json"};
    // ignore: prefer_const_declarations
    final json = '{"nameClient" : ""}';
  }*/
}
