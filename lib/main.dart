import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'Screens/axie_tutorial.dart';
import 'Screens/calculator.dart';
import 'Screens/loading_screen.dart';
import 'Screens/slp_info.dart';

void main() => runApp(axieAIO());

class axieAIO extends StatelessWidget {
  const axieAIO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      home: AnimatedSplashScreen(
        splash: Image(
          width: 250,
          height: 250,
          image: AssetImage('images/loading.gif'),
        ),
        nextScreen: axieMain(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}

class axieMain extends StatefulWidget {
  const axieMain({Key? key}) : super(key: key);

  @override
  _axieMainState createState() => _axieMainState();
}

class _axieMainState extends State<axieMain> {
  @override
  Widget build(BuildContext context) {
    Get.put(Themes());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FOR ALL OF YOUR AXIE NEEDS",
          style: Theme.of(context).primaryTextTheme.headline6,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          //adds a small changing icon for dark/light mode
          GetBuilder<Themes>(
            builder: (controller) => IconButton(
              icon: Icon(
                Themes.isDark
                    ? FontAwesomeIcons.solidSun
                    : FontAwesomeIcons.solidMoon,
                color: Theme.of(context).colorScheme.secondary,
                size: 27,
              ),
              onPressed: () => controller.toggleMode(),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Image(
                    image: AssetImage('images/logo.png'),
                  )),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Column(
                children: [
                  //ROW ITEMS 1 AND 2
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => calculatorScreen());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ltBlue,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.7),
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(4, 4),
                                      ),
                                    ],
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 10, 13, 0),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: double.infinity,
                                              child: Text(
                                                "Calculator",
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                image:
                                                    AssetImage('images/1.png'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => slpInfo());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.7),
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(4, 4),
                                      ),
                                    ],
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 10, 13, 0),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: double.infinity,
                                              child: Text(
                                                "SLP per MMR",
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                image:
                                                    AssetImage('images/2.png'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  // ROW ITEMS 3 AND 4
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => LoadingScreen());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.7),
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(4, 4),
                                      ),
                                    ],
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 10, 13, 0),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: double.infinity,
                                              child: Text(
                                                "SLP Value",
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                image:
                                                    AssetImage('images/3.png'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => axieTutorial());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ltBlue,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.7),
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(4, 4),
                                      ),
                                    ],
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 10, 13, 0),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: double.infinity,
                                              child: Text(
                                                "The Basics",
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              child: Image(
                                                image:
                                                    AssetImage('images/4.png'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
