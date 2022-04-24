import 'package:flutter/material.dart';
import 'package:quran_app/Utils/constants.dart';

import '../../../widgets.dart';

class PrayerTime extends StatefulWidget {
  const PrayerTime({Key? key}) : super(key: key);

  @override
  State<PrayerTime> createState() => _PrayerTimeState();
}

class _PrayerTimeState extends State<PrayerTime> {
  static const _time = [
    '04:01 AM',
    '04:01 AM',
    '04:01 AM',
    '04:01 AM',
    '04:01 AM',
  ];
  static const _name = [
    '"Fajar',
    'Dhuhar',
    'Asr',
    'Maghrib',
    'Isha',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,"PRAYER TIME"),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: primayColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                )),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Lahore,Pakistan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: _time.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 5,
                              child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.volume_up,
                                            color: primayColor,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            _name[index],
                                            style: TextStyle(
                                              color: primayColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            _time[index],
                                            style: TextStyle(
                                              color: primayColor,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.settings,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
