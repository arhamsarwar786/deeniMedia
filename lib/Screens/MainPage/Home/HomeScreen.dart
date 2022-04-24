// ignore: file_names
import 'package:provider/provider.dart';
import 'package:quran_app/Provider/main_provider.dart';
import 'package:quran_app/Screens/MainPage/Dua/dua_screen.dart';
import 'package:quran_app/Screens/MainPage/Khalima/khalima_screen.dart';
import 'package:quran_app/Screens/MainPage/Quran/Quran.dart';
import 'package:quran_app/Screens/MainPage/Quran/tabbarview.dart';
import 'package:quran_app/Screens/MainPage/Tasbeeh/tasbeeh_screen.dart';
import 'package:quran_app/Screens/MainPage/main_screen.dart';
import 'package:quran_app/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/widgets.dart';
import 'NameofAllah.dart';
import 'NameofMohammad.dart';
import 'PrayerTime.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/BgImage.png"),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Header
                      headerInfo(context, size),
                      const SizedBox(
                        height: 10,
                      ),
                      screensList(context, size),
                      const SizedBox(
                        height: 10,
                      ),
                      // prayerQiblaList
                      prayerQiblaList(context, size),
                      const SizedBox(
                        height: 10,
                      ),
                      // hadeesDailyVerse
                      quranDailyVerse(context, size),
                      const SizedBox(
                        height: 10,
                      ),
                      // hadeesDailyVerse
                      hadeesDailyVerse(context, size),
                      const SizedBox(
                        height: 10,
                      ),
                      // namesAllahProphet
                      namesAllahProphet(context, size),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  // Header //
  Widget headerInfo(BuildContext context, Size size) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: primayColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 5,
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffFFFFFF),
                          child: Icon(
                            Icons.menu,
                            color: primayColor,
                          )),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 5,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffFFFFFF),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/home.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 5,
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.notifications,
                            color: primayColor,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0, left: 12, right: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/moon.png"),
                                    fit: BoxFit.fill)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "16,RAMADAN 1443",
                            style: TextStyle(
                              color: primayColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 96,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/location.png"),
                                    fit: BoxFit.fill)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "LAHORE",
                            style: TextStyle(
                              color: primayColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 96,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Calender.png"),
                                    fit: BoxFit.fill)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "SUNDAY, 17 APRIL 2022 ",
                            style: TextStyle(
                              color: primayColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width * 0.25,
                      decoration: const BoxDecoration(
                          // color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage("assets/images/Mosque.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ScreenList //
  Widget screensList(BuildContext context, Size size) {
    MyProvider provider = Provider.of<MyProvider>(context,listen: false);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: primayColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15.0, top: 7, bottom: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  push(context, TabBarDemo());
                },
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/book.png"),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      " QURAN",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: primayColor,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  provider.screenIndex = 1;
                  pushUntil(context, MainScreen());
                },
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Dua.png"),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      "DUA",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: primayColor,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  provider.screenIndex = 2;
                  pushUntil(context, MainScreen());
                },
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Tasbi.png"),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      "TASBEEH",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: primayColor,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  provider.screenIndex = 2;
                  pushUntil(context, MainScreen());
                },
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/kalma.png"),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      "KHALIMA",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: primayColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // PrayerQiblaList //
  Widget prayerQiblaList(BuildContext context, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            push(context, const PrayerTime());
          },
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              height: size.height * 0.06,
              width: size.width * 0.42,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: primayColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.10,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Minar2.png"))),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "PRAYER TIME",
                      style: TextStyle(
                        color: primayColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            height: size.height * 0.06,
            width: size.width * 0.42,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: primayColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.05,
                  width: size.width * 0.10,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/MAP.png"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "QIBLA DIRECTION",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // quranDailyVerse //
  Widget quranDailyVerse(BuildContext context, Size size) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: primayColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 2, bottom: 2),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Book1.png"),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "QURAN VERSES",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Center(
              child: Text(
                "COMING SOON",
                style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                    decorationThickness: 2.0),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Text(
          //     "Alif, Lam, Meem.This is the Book in which there is no doubt,a guide for the righteous.Those who believe in the unseen, and perform the prayers, and give from what We have provided for them.",
          //   style: TextStyle(
          //       color: primayColor,
          //       fontSize: 15,
          //       fontWeight: FontWeight.w600,
          //       height: 1.3,
          //       decorationThickness: 2.0),
          // ),
          // ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 25.0, bottom: 10),
          //     child: Text(
          //       "[2:1,2,3]",
          //       style: TextStyle(
          //           color: primayColor,
          //           fontSize: 16,
          //           fontWeight: FontWeight.w700,
          //           decorationThickness: 2.0),
          //     ),
          //   ),
          // )
        ]),
      ),
    );
  }

  // hadeesDailyVerse //
  Widget hadeesDailyVerse(BuildContext context, Size size) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        // height: size.height * 0.27,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: primayColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 2, bottom: 2),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Hadees1.png"),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "HADEES",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Center(
              child: Text(
                "COMING SOON",
                style: TextStyle(
                    color: primayColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                    decorationThickness: 2.0),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Text(
          //     "Anas narrates that theProphet (peace and blessings of Allah be upon him) said: “None of you can be a believer unless I love him more than his father, his children and all the people.",
          //     style: TextStyle(
          //         color: primayColor,
          //         height: 1.3,
          //         fontSize: 15,
          //         fontWeight: FontWeight.w600,
          //         decorationThickness: 2.0),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 25.0, bottom: 10),
          //     child: Text(
          //       "[MISKAT-7]",
          //       style: TextStyle(
          //           color: primayColor,
          //           fontSize: 16,
          //           fontWeight: FontWeight.w700,
          //           decorationThickness: 2.0),
          //     ),
          //   ),
          // )
        ]),
      ),
    );
  }

  // namesAllahProphet //
  Widget namesAllahProphet(BuildContext context, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            push(context,const NameofAllah());
          },
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              height: size.height * 0.07,
              width: size.width * 0.43,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: primayColor,
                    width: 2,
                  )),
              child: Center(
                child: Text(
                  "NAME OF ALLAH",
                  style: TextStyle(
                    color: primayColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            push(context, const NameofMohammad());
          },
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              height: size.height * 0.07,
              width: size.width * 0.43,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: primayColor,
                    width: 2,
                  )),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Text(
                      "NAME OF MUHAMMAD",
                      style: TextStyle(
                        color: primayColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "(PBUH)",
                      style: TextStyle(
                        color: primayColor,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
