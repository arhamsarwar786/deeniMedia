import 'package:flutter/material.dart';
import 'package:quran_app/Utils/constants.dart';

import '../../../widgets.dart';

class Contactus extends StatefulWidget {
  const Contactus({Key? key}) : super(key: key);

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: mainScreenAppBarPush(context, "Contact us"),
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
