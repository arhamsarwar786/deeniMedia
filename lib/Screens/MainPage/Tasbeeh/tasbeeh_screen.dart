import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';
import '../../../widgets.dart';
import '../main_screen.dart';

class TasbeehScreen extends StatelessWidget {
  const TasbeehScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: mainScreenAppBarPush(context, "Tasbeeh"),
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