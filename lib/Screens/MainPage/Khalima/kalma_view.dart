// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quran_app/Utils/constants.dart';

import '../../../widgets.dart';

class KalmaView extends StatefulWidget {
  const KalmaView({Key? key}) : super(key: key);

  @override
  State<KalmaView> createState() => _KalmaViewState();
}

class _KalmaViewState extends State<KalmaView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(context, "KALMA "),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 5, color: primayColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 10,
                shadowColor: primayColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(
                      color: primayColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/topleft.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: FittedBox(
                                child: Text(
                              "FIRST KALMA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/topright.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: FittedBox(
                            child: Text(
                          "لَا إِلَٰهَ إِلَّا ٱللَّٰهُ مُحَمَّدٌ رَسُولُ ٱللَّٰهِ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: FittedBox(
                            child: Text(
                          "اللہ کے سوا کوئی معبود نہیں محمد ﷺ اللہ کے رسول ہیں",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/bottomleft.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/bottomright.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
