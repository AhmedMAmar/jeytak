// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jeytak/screens/restaurants_page.dart';
import 'package:jeytak/screens/super_page.dart';
import 'package:jeytak/utils/constants.dart';
import 'package:jeytak/utils/widget_functions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "Ville",
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  addVerticalSpace(10),
                  SizedBox(
                    child: Padding(
                      padding: sidePadding,
                      child: Text(
                        "Nouakchott",
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
                                        return RestaurantsPage();
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
                                                      'assets/images/sparks.jpg'))),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "Restaurants",
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
                                        return SuperPage();
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
                                                  fit: BoxFit.fitWidth,
                                                  image: AssetImage(
                                                      'assets/images/super.jpg'))),
                                        ],
                                      ),
                                      addVerticalSpace(15),
                                      Row(
                                        children: [
                                          Text(
                                            "Supermarches",
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
