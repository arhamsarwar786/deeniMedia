import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/Models/chapter_surats_model.dart';
import 'package:quran_app/Models/quran_kareem_urdu_model.dart';

import '../../API_Manager/api_manager.dart';
import '../../surat_page.dart';

class ChapterSurats extends StatefulWidget {
  const ChapterSurats({Key? key}) : super(key: key);

  @override
  State<ChapterSurats> createState() => _ChapterSuratsState();
}

class _ChapterSuratsState extends State<ChapterSurats> {
  ChapterSuratsModel? suratsData;

  fetchChapterSurats() async {
    var data = await APIManager().chapterSurats(context);
    suratsData = ChapterSuratsModel.fromJson(jsonDecode(data));
    setState(() {});
  }

  @override
  void initState() {
    fetchChapterSurats();
    super.initState();
  }


Future<String>_loadFromAsset() async {
  return await rootBundle.loadString("assets/quran_kareem/urdu_translation/quran_urdu.json");
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: ()async{
          List<QuranKareemUrduModel> data = quranKareemUrduModelFromJson(await _loadFromAsset());
          print(data[0].verses![0].arabicText);
        }),
        appBar: AppBar(title: Text("Surats",style: TextStyle(color: Colors.white),),centerTitle: true,),
        
        body: Container(
          child: suratsData == null
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : 
            Text("بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",style: TextStyle(fontFamily: "arabic",fontSize: 30,fontWeight: FontWeight.bold),),
              // GridView.builder(
              //     itemCount: suratsData!.chapters!.length,
              //     shrinkWrap: true,
              //     padding: EdgeInsets.all(10),
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 5.0,
              //       mainAxisSpacing: 5.0,
              //     childAspectRatio: 1.5
              //     ),
              //     itemBuilder: (context, index) {
              //       var surat = suratsData!.chapters![index];
              //       return InkWell(
              //         onTap: (){
              //           Navigator.push(context, MaterialPageRoute(builder: (_)=> SuratPage(surat) ));
              //         },
              //         child: Container(                    
              //           decoration: BoxDecoration(
              //             border: Border.all(color: Colors.orange,width: 3),
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Text(surat.nameArabic,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              //               Text(surat.nameSimple),
              //             ],
              //           ),
              //         ),
              //       );
              //     }),
      
        ),
      ),
    );
  }
}
