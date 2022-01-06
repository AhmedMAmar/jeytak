// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jeytak/screens/catalog_screen.dart';
import 'package:jeytak/utils/constants.dart';
import 'package:jeytak/utils/widget_functions.dart';

class SuperPage extends StatelessWidget {
  const SuperPage({Key? key}) : super(key: key);

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
                        "Supermarches",
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
                                onTap: () {},
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
                                                  height: 200,
                                                  image: AssetImage(
                                                      'assets/images/grocery-cart.png'))),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "Shamy",
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
                                onTap: () {},
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Center(
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                                child: Image(
                                                    height: 200,
                                                    image: AssetImage(
                                                        'assets/images/display.png'))),
                                          ),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "MauriCentre",
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
                                          Center(
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                                child: Image(
                                                    height: 200,
                                                    image: AssetImage(
                                                        'assets/images/supermarket.png'))),
                                          ),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "Etak",
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
