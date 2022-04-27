// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quran_app/Utils/constants.dart';

import '../../../widgets.dart';

class Kalma4 extends StatefulWidget {
  const Kalma4({Key? key}) : super(key: key);

  @override
  State<Kalma4> createState() => _Kalma4State();
}

class _Kalma4State extends State<Kalma4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(context, "KALIMA"),
      body: Stack(
        children: [
          bgImage(context, size),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(border: Border.all(width: 5, color: primayColor)),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/forth kalma.png"),
                          fit: BoxFit.contain)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
