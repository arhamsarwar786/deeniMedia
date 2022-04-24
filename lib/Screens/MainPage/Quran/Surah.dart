import 'package:flutter/material.dart';

class Surah extends StatefulWidget {
  const Surah({Key? key}) : super(key: key);

  @override
  State<Surah> createState() => _SurahState();
}

class _SurahState extends State<Surah> {
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
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
        itemCount: _num.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                title: Text(
                  "	Al-Fatihah",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Maccan-Verses: 7",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xff005d66),
                  child: Center(
                      child: Text(
                    _num[index],
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                trailing: Column(
                  children: [
                    Text(
                      "الفَاتِحَة",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
