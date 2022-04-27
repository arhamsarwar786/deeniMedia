import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/Provider/main_provider.dart';
import 'package:quran_app/Screens/MainPage/Dua/dua_screen.dart';

import 'package:quran_app/Screens/MainPage/Tasbeeh/tasbeeh_screen.dart';
import 'package:quran_app/Utils/constants.dart';
import 'package:quran_app/widgets.dart';
import 'Home/HomeScreen.dart';
import 'Khalima/kalma_screen.dart';

List<Widget> screens = [
  const Home(),
  const DuaScreen(),
  const TasbeehScreen(),
  const KhailmaScreen()
];

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        bottomNavigationBar: buildMyNavBar(context),
        body: Consumer<MyProvider>(builder: (context, provider, child) {
          return screens[provider.screenIndex];
        }),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
                },
                child: MaterialButton(
                  color: primayColor,
                  onPressed: (){},
                  child: Text('Yes',style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        )) ??
        false;
  }

// BOTTOM NAVIGATION BAR
  Widget buildMyNavBar(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context, listen: false);
    return Container(
      // margin: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
      height: 50,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: primayColor, blurRadius: 10, spreadRadius: 2)
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              provider.screenIndex = 0;
              pushUntil(context, MainScreen());
            },
            child: provider.screenIndex == 0
                ? Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/book.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  )
                : Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/book.png"),
                            fit: BoxFit.fill)),
                  ),
          ),
          InkWell(
            onTap: () {
              provider.screenIndex = 1;
              pushUntil(context, MainScreen());
            },
            child: provider.screenIndex == 1
                ? Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 10,
                    child: Container(
                      height: 40,
                      width: 35,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Dua.png"),
                              fit: BoxFit.fill)),
                    ),
                  )
                : Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Dua.png"),
                            fit: BoxFit.fill)),
                  ),
          ),
          InkWell(
            onTap: () {
              provider.screenIndex = 2;
              pushUntil(context, MainScreen());
            },
            child: provider.screenIndex == 2
                ? Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Tasbi.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  )
                : Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Tasbi.png"),
                            fit: BoxFit.fill)),
                  ),
          ),
          InkWell(
            onTap: () {
              provider.screenIndex = 3;
              pushUntil(context, MainScreen());
            },
            child: provider.screenIndex == 3
                ? Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/kalma.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  )
                : Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/kalma.png"),
                            fit: BoxFit.fill)),
                  ),
          ),
        ],
      ),
    );
  }
}
