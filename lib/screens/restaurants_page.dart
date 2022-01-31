// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jeytak/screens/catalog_screen.dart';
import 'package:jeytak/utils/constants.dart';
import 'package:jeytak/utils/widget_functions.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(padding),
                  addVerticalSpace(10),
                  SizedBox(
                    child: Padding(
                      padding: sidePadding,
                      child: Text(
                        "Restaurants",
                        style: themeData.textTheme.headline3,
                      ),
                    ),
                  ),
                  Padding(
                      padding: sidePadding,
                      child: Divider(
                        height: 25,
                        color: COLOR_GREY,
                      )),
                  Expanded(
                    child: Padding(
                        padding: sidePadding,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return CatalogScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/images/palacio.jpg'))),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "Palacio",
                                            style:
                                                themeData.textTheme.headline6,
                                          ),
                                          addHorizontalSpace(10),
                                        ],
                                      ),
                                      addVerticalSpace(10),
                                    ],
                                  ),
                                ),
                              ),
                              //addVerticalSpace(10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return CatalogScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/images/appetizer.jpg'))),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "Appetizer",
                                            style:
                                                themeData.textTheme.headline6,
                                          ),
                                          addHorizontalSpace(10),
                                        ],
                                      ),
                                      addVerticalSpace(10),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return CatalogScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/images/timeless.jpg'))),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "Timeless",
                                            style:
                                                themeData.textTheme.headline6,
                                          ),
                                          addHorizontalSpace(10),
                                        ],
                                      ),
                                      addVerticalSpace(10),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return CatalogScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/images/crep-house.jpg'))),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "Crep House",
                                            style:
                                                themeData.textTheme.headline6,
                                          ),
                                          addHorizontalSpace(10),
                                        ],
                                      ),
                                      addVerticalSpace(10),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
