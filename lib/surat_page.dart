import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:quran_app/API_Manager/api_manager.dart';
import 'package:quran_app/Models/chapter_surats_model.dart';
import 'package:quran_app/Models/surat.dart';

class SuratPage extends StatefulWidget {
  final Chapter suratDetails;

  SuratPage(this.suratDetails);

  @override
  State<SuratPage> createState() => _SuratPageState();
}

class _SuratPageState extends State<SuratPage> {
  @override
  void initState() {
    fetchSurat();
    super.initState();
  }

  fetchSurat() async {
    var data = await APIManager().suratRes(context,chapterID: widget.suratDetails.id);
    response = Surat.fromJson(jsonDecode(data));
    setState(() {});
  }

  Surat? response;
  var i;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.suratDetails.nameArabic,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: response == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("assets/images/Quran App 2.png"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                        itemCount: response!.verses!.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          
                          var verse = response!.verses![index];
                          return Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  verse.textMadani,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                Wrap(
                                  children: [
                                    // for (int j = verse.words!.length; j > 0; j--)
                                    for (int j = 0; j < verse.words!.length; j++)
                                      Text(verse.words![j].translation!.text),
                                  ],
                                ),
                                // Wrap(
                                //   children: [
                                //     for (i = 0; i < verse.words!.length; i++)
                                //       Container(
                                //           padding: const EdgeInsets.all(5),
                                //           decoration: BoxDecoration(
                                //               border: Border.all(color: Colors.black)),
                                //           child: Column(
                                //             children: [
                                //               Text(
                                //                 verse.words![i].textMadani,
                                //                 style: TextStyle(
                                //                     fontWeight: FontWeight.bold,
                                //                     fontSize: 20),
                                //               ),
                                //               Text(verse.words![i].translation!.text),
                                //             ],
                                //           ))
                                //   ],
                                // )
                           
                              ],
                            ),
                          );
                        }),
                  ),
            
                      Image.asset("assets/images/Quran App 2.png"),
                ],
              ),
            ),
      ),
    );
  }
}
