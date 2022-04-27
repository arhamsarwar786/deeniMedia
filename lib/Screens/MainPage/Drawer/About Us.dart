import 'package:flutter/material.dart';
import 'package:quran_app/Utils/constants.dart';

import '../../../widgets.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: mainScreenAppBarPush(context, "About us"),
      body: Stack(
        alignment: Alignment.center,
        children: [
          bgImage(context, size),
          Text(
            "COMING SOON",
            style: TextStyle(
                color: primayColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                height: 1.3,
                decorationThickness: 2.0),
          ),
        ],
      ),
    );
  }
}
