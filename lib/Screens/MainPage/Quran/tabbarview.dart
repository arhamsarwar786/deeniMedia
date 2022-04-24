// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quran_app/widgets.dart';


import 'Parah.dart';
import 'Quran.dart';
import 'Surah.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            elevation: 10,
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/book.png"))),
            )),
        appBar: mainScreenAppBarPush(context, "Recite Quran"),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 170.0),
                child: Material(
                  color: Color(0xff005d66),
                  child: TabBar(
                    indicatorColor: Colors.white,
                    unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 14),
                    indicatorPadding:
                        EdgeInsets.only(left: 40, right: 40, bottom: 5),
                    tabs: [
                      Tab(
                        text: "Quran",
                      ),
                      Tab(
                        text: "Surah",
                      ),
                      Tab(
                        text: "Parah",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xff005d66),
                        // borderRadius: BorderRadius.only(
                        //   topRight: Radius.circular(40),
                        //   topLeft: Radius.circular(40),
                        // ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        ),
                      ),
                      child: TabBarView(
                        children: [
                          Quran(),
                          Surah(),
                          Parah(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
