import 'package:flutter/material.dart';
import 'package:quran_app/Screens/MainPage/main_screen.dart';
import 'package:quran_app/widgets.dart';

import '../../../Utils/constants.dart';
import 'Kakma6.dart';
import 'Kalma1.dart';
import 'Kalma2.dart';
import 'Kalma3.dart';
import 'Kalma4.dart';
import 'kalma5.dart';

class KhailmaScreen extends StatelessWidget {
  const KhailmaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _name = [
      'FIRST KALMA',
      'SECOND KALMA',
      'THIRD KALMA',
      'FORTH KALMA',
      'FIFTH KALMA',
      'SIXTH KALMA',
    ];
    const _name1 = [
      'پہلا کلمہ',
      'دوسرا کلمہ',
      'تیسرا کلمہ',
      'جوتھا کلمہ',
      'پانچواں کلمہ',
      'چھٹا کلمہ',
    ];
    var _navigationSc = [
      const Kalma1(),
      const Kalma2(),
      const Kalma3(),
      const Kalma4(),
      const Kalma5(),
      const Kalma6(),
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: mainScreenAppBarPush(context, "KALIMA"),
      body: Stack(
        alignment: Alignment.center,
        children: [
          bgImage(context, size),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.builder(
                    itemCount: _name.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.90,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 25,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => _navigationSc[index]));
                        },
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/Kalma corner topleft.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/Kalma corner topright.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          _name1[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          _name[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/Kalma corner bottomleft.png"))),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/Kalma corner bottomright.png"))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
