// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:jeytak/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Column(children: [
          Row(children: [
            Text(
              'Total',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              '${controller.total}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              FlatButton(
                // ignore: prefer_const_constructors
                child: Text(
                  'Valider',
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.orangeAccent,
                textColor: Colors.white,
                onPressed: () {
                  // _makePostRequest();
                },
              ),
            ],
          )
          /**/
        ]),
      ),
    );
  }

  _makePostRequest() async {
    final url =
        Uri.parse('https://backend-server-flutter-app.herokuapp.com/orders/');
    final headers = {"Content-type": "application/json"};
    // ignore: prefer_const_declarations
    final json =
        '{"nameClient" : "ahmed","nameOrder":"chickfilla with butter","priceOrder":"1247"}';

    final response = await http.post(url, headers: headers, body: json);

    // check the status code for the result
    final statusCode = response.statusCode;

    print(statusCode);
  }
}
