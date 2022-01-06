import 'package:jeytak/screens/cart_screen.dart';
import 'package:jeytak/widgets/catalog_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () => Get.to(() => CartScreen()),
                  child: Icon(Icons.shopping_cart),
                )),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              CatalogProducts(),
              /*ElevatedButton(
                onPressed: () => Get.to(() => CartScreen()),
                // ignore: prefer_const_constructors
                child: Text('allez au panier'),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
