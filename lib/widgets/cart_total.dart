// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:geolocator/geolocator.dart';
import 'package:jeytak/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:jeytak/screens/home_page.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  final Map<String, String> map = {};
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AdvanceCustomAlert();
                      });
                },
              ),
            ],
          )
          /**/
        ]),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Commande'),
            content: Text('commande passée avec succès'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Retourner au menu',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Trueno',
                      fontSize: 20.0),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _makePostRequest() async {
    int i = 0;

    final url = Uri.parse(
        'https://backend-server-flutter-app.herokuapp.com/api/orders/');
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

Future<void> _getCurrentPosition() async {
  // verify permissions
  late Position _currentPosition;
  /*CollectionReference positions =
        FirebaseFirestore.instance.collection('positions');*/

  LocationPermission permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    await Geolocator.openAppSettings();
    await Geolocator.openLocationSettings();
  }

  //Position _currentPosition;
  // get current position
  _currentPosition = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  print(_currentPosition);

  /*positions.add({
      'location': _currentPosition,
    });*/

  /*positions.add({
      'latitude': _currentPosition.latitude,
      'longitude': _currentPosition.longitude,
    });*/

  // get address
}

class AdvanceCustomAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Column(
                  children: [
                    Text(
                      'Commande passée avec succès',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Trueno',
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () {
                        _getCurrentPosition().then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomePage();
                                },
                              ),
                            ));
                      },
                      color: Colors.lightBlueAccent,
                      child: Text(
                        'Retour au Menu',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: -60,
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 60,
                  child: Icon(
                    Icons.assistant_photo,
                    color: Colors.white,
                    size: 50,
                  ),
                )),
          ],
        ));
  }
}
