import 'package:flutter/material.dart';

class Parah extends StatefulWidget {
  const Parah({Key? key}) : super(key: key);

  @override
  State<Parah> createState() => _ParahState();
}

class _ParahState extends State<Parah> {
  static const _parah = [
    'الم',
    'سَيَقُولُ',
    'تِلْكَ الرُّسُلُ',
    'لَنْ تَنَالُوا',
    'وَالْمُحْصَنَاتُ',
    'لَا يُحِبُّ اللَّهُ',
    'وَإِذَا سَمِعُوا',
    '	وَلَوْ أَنَّنَا',
    'قَالَ الْمَلَأُ',
    '	وَاعْلَمُوا',
    'يَعْتَذِرُونَ',
    'وَمَا مِنْ دَابَّةٍ',
  ];
  static const _num = [
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
    '11',
    '12',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 15, bottom: 10),
      child: GridView.builder(
          itemCount: _num.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
            // crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.height * 0.22,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 2),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xff005d66),
                            child: Center(
                                child: Text(
                              _num[index],
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/cornertop.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          _parah[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/cornerbottom.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0, bottom: 2),
                          child: Text(
                            "17",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: Container(
                            height: 23,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color(0xff005d66),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                "Total Ruku",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/icons 2 2.png"))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
