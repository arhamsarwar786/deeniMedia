// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quran_app/Screens/MainPage/Dua/dua_screen.dart';
import 'package:quran_app/Screens/MainPage/Khalima/kalma_screen.dart';
import 'package:quran_app/Screens/MainPage/Quran/Favorite.dart';
import 'package:quran_app/Screens/MainPage/Quran/Quran.dart';
import 'package:quran_app/Screens/MainPage/Quran/tabbarview.dart';
import 'package:quran_app/Screens/MainPage/Tasbeeh/tasbeeh_screen.dart';
import 'package:quran_app/Utils/constants.dart';

import 'About Us.dart';
import 'ContactUs.dart';

// import 'contactUs.dart';

class Darwerr extends StatefulWidget {
  @override
  _DarwerrState createState() => _DarwerrState();
}

class _DarwerrState extends State<Darwerr> with SingleTickerProviderStateMixin {
  static const _menuTitles = [
    'Favourite',
    'Quran',
    'Kalima',
    'Dua',
    'Tasbeeh',
    'Contact Us',
    'About Us',
    'Share',
  ];
  static const _icons = [
    'assets/images/Favourite.png',
    'assets/images/book.png',
    'assets/images/kalma.png',
    'assets/images/Dua.png',
    'assets/images/Tasbi.png',
    'assets/images/Contact us.png',
    'assets/images/About us.png',
    'assets/images/Share.png',
  ];
  var _navigationSc = [
    Favorite(),
    TabBarDemo(),
    KhailmaScreen(),
    DuaScreen(),
    TasbeehScreen(),
    Contactus(),
    Aboutus(),
  ];
  static const _initialDelayTime = Duration(milliseconds: 50);
  static const _itemSlideTime = Duration(milliseconds: 600);
  static const _staggerTime = Duration(milliseconds: 50);
  static const _buttonDelayTime = Duration(milliseconds: 150);
  static const _buttonTime = Duration(milliseconds: 500);
  final _animationDuration = _initialDelayTime +
      (_staggerTime * _menuTitles.length) +
      _buttonDelayTime +
      _buttonTime;

  late AnimationController _staggeredController;
  final List<Interval> _itemSlideIntervals = [];
  late Interval _buttonInterval;

  @override
  void initState() {
    super.initState();

    _createAnimationIntervals();

    _staggeredController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..forward();
  }

  void _createAnimationIntervals() {
    for (var i = 0; i < _menuTitles.length; ++i) {
      final startTime = _initialDelayTime + (_staggerTime * i);
      final endTime = startTime + _itemSlideTime;
      _itemSlideIntervals.add(
        Interval(
          startTime.inMilliseconds / _animationDuration.inMilliseconds,
          endTime.inMilliseconds / _animationDuration.inMilliseconds,
        ),
      );
    }
  }

  @override
  void dispose() {
    _staggeredController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: DrawerHeader(
                decoration: BoxDecoration(color: primayColor),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.60,
                  decoration: BoxDecoration(
                    color: primayColor,
                    image: DecorationImage(
                      image: AssetImage("assets/images/Quran Logo.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: _menuTitles.length,
              itemBuilder: (context, i) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      AnimatedBuilder(
                        animation: _staggeredController,
                        builder: (context, child) {
                          final animationPercent = Curves.easeOut.transform(
                            _itemSlideIntervals[i]
                                .transform(_staggeredController.value),
                          );
                          final opacity = animationPercent;
                          final slideDistance = (1 - animationPercent) * 150;

                          return Opacity(
                            opacity: opacity,
                            child: Transform.translate(
                              offset: Offset(slideDistance, 0),
                              child: child,
                            ),
                          );
                        },
                        child: Card(
                          elevation: 3,
                          child: ListTile(
                            dense: true,
                            leading: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(_icons[i]),
                                      fit: BoxFit.fill)),
                            ),
                            selectedTileColor: Color(0xff00164C),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => _navigationSc[i]));
                            },
                            title: Text(
                              _menuTitles[i],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff00164C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
