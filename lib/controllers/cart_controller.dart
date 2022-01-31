// ignore_for_file: prefer_final_fields

import 'package:jeytak/model/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
      "Produit Ajouter",
      "vous avez ajouter ${product.name} dans votre panier",
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
    );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);

  check() {
    // ignore: prefer_for_elements_to_map_fromiterable
    Map map = Map.fromIterable(_products.entries,
        key: (k) => _products.entries.map((product) => product.key.name),
        value: (v) => _products.entries.map((product) => product.value));
    return map;
  }
}
