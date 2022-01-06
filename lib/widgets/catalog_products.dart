import 'package:jeytak/controllers/cart_controller.dart';
//import 'package:jeytak/controllers/product_controller.dart';
import 'package:get/get.dart';
import 'package:jeytak/model/product_model.dart';
import 'package:flutter/material.dart';

class CatalogProducts extends StatelessWidget {
  //final productController = Get.put(ProductController());
  CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount:
              Product.products.length, //productController.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CatalogProductCard(index: index);
          }),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  //final ProductController productController = Get.find();
  final int index;
  CatalogProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 48,
            backgroundImage: NetworkImage(
              Product.products[index].imageUrl,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              Product.products[index].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(child: Text('${Product.products[index].price}')),
          ElevatedButton.icon(
            label: Text('ajouter'),
            onPressed: () {
              cartController.addProduct(Product.products[index]);
            },
            icon: Icon(
              Icons.add_circle,
            ),
          )
        ],
      ),
    );
  }
}
