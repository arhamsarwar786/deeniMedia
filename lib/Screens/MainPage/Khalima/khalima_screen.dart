import 'package:flutter/material.dart';
import 'package:quran_app/Screens/MainPage/main_screen.dart';
import 'package:quran_app/widgets.dart';

import '../../../Utils/constants.dart';

class KhailmaScreen extends StatelessWidget {
  const KhailmaScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: mainScreenAppBarPush(context, "Khalima"),
        body: Stack(
          alignment: Alignment.center,
          children: [
            bgImage(context,size),
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